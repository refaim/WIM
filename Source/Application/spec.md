# PlayerService Spec

## Purpose

Provides player information (class, level, race, guild, GM status) to consumers. The source of the data (WHO queries, cache, chat flags) is an implementation detail.

## Interface

| Method | Description |
|--------|-------------|
| `Construct(gameAPI)` | DI — accepts GameAPI |
| `GetInfo(name, callback)` | Main method. Callback receives Player. Cached — immediate, otherwise via WHO |
| `OnWhisperReceived(name, flags)` | Incoming/outgoing whisper signal. Service detects GM from flags internally |
| `Tick()` | Called once per second. Processes the queue |
| `OnSearchResults(numResults, getWhoInfoFn)` | WHO_LIST_UPDATE handler. Returns `true` if results were consumed |
| `Disable()` | Clears queue, resets scan state |

## Business Logic

**Cache:** `name -> Player`. Cache hit = immediate callback, no WHO query.

**Queue:** `name -> PlayerQuery`. One player = one entry with multiple callbacks.

**WHO cooldown:**
- Vanilla: 5s
- Turtle WoW: 30s
- GM player (current): no cooldown

**Response timeout:**
- Non-GM (current): 10s, then retry
- GM (current): 2s, then retry

> **TODO:** Current player GM logic (cooldown/timeout/SetWhoToUI skip) — unclear if needed. Two separate GM concepts in old code: (1) other player is GM (detected from chat flags, skips WHO), (2) current player is GM (detected from spellbook, affects cooldowns and SetWhoToUI). Consider simplifying or removing (2).

**Retry:** max 5 attempts per player. Next player picked by round-robin (lowest attempt count first).

**GM detection:** if `flags == "GM"` in `OnWhisperReceived` — GM Player is created, player is removed from queue, pending callbacks fire immediately.

**SetWhoToUI:** enabled before sending WHO (suppresses default UI), disabled when queue is empty. Not called for GM players.

---

## Domain: Player

Value object representing a player. Immutable after construction.

| Field | Type | Description |
|-------|------|-------------|
| class | string | Localized class name ("Mage", "Warrior", ...) |
| level | number | Character level |
| race | string | Localized race name |
| guild | string | Guild name (empty string if none) |
| isGM | boolean | Whether the player is a GM |

Two constructors:
- `Construct(class, level, race, guild)` — from WHO result, `isGM = false`
- `ConstructGM()` — GM without WHO data, all fields nil except `isGM = true`

Getters: `GetClass()`, `GetLevel()`, `GetRace()`, `GetGuild()`, `IsGM()`.

---

## Domain: PlayerQuery

Pending request for player info. Tracks callbacks and retry attempts. MAX_ATTEMPTS = 5 inside.

- `Construct(callback)` — first callback in constructor, attempts = 0
- `AddCallback(callback)` — additional callback
- `Attempt()` — increments attempts
- `IsExpired()` — attempts >= MAX_ATTEMPTS
- `Resolve(player)` — fires all callbacks with Player, clears them

---

## Infrastructure: GameAPI

Thin abstraction over WoW API used by PlayerService. Replaced with a mock in tests.

> **TODO:** Revisit method names and set. `SearchPlayer`/`EndPlayerSearch` still leak WHO semantics. As current-player-GM logic gets clarified, the API may change (e.g. SearchPlayer might always handle SetWhoToUI internally, or the method split may look different).

| Method | WoW API |
|--------|---------|
| `SearchPlayer(name)` | `SetWhoToUI(1)` + `SendWho('n-"name"')` |
| `EndPlayerSearch()` | `SetWhoToUI(0)` |
| `GetTime()` | `GetTime()` |
| `IsTurtleWoW()` | `TURTLE_WOW_VERSION ~= nil` |
