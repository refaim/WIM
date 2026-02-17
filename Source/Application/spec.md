# PlayerService Spec

## Purpose

Provides player information (class, level, race, guild, GM status) to consumers. The source of the data (WHO queries, cache, chat flags) is an implementation detail.

## Interface

| Method | Description |
|--------|-------------|
| `Construct(whoService, gameAPI)` | DI — accepts WhoService and GameAPI |
| `GetInfo(name, callback)` | Main method. Callback receives Player. Cached — immediate, otherwise via WHO |
| `Enable()` | Enables the service. `GetInfo` starts accepting requests |
| `Disable()` | Disables the service. Clears queue, cancels pending search. `GetInfo` silently ignores requests while disabled |

## Business Logic

**Cache:** `name -> Player`. Cache hit = immediate callback, no WHO query.

**Queue:** `name -> PlayerQuery`. One player = one entry, one callback.

**WHO cooldown:** obtained from `WhoService.GetQueryCooldownInSeconds()`.

**Response timeout:** 10s, then retry. 2s if `GameAPI.IsCurrentPlayerGM()`.

**Retry:** max 5 attempts per player. Next player picked by round-robin (lowest attempt count first).

**GM detection:** detected via `GameAPI.SetWhisperCallback`. If whisper is from GM — GM Player is created, player is removed from queue, pending callbacks fire immediately.

---

## Domain: Player

Value object representing a player. Immutable after construction. **Pooled.**

- `Acquire(class, level, race, guild)` — from WHO result, `isGM = false`
- `AcquireGM()` — GM without WHO data, all fields nil except `isGM = true`
- `Release()` — clears fields, returns to pool
- Getters: `GetClass()`, `GetLevel()`, `GetRace()`, `GetGuild()`, `IsGM()`

---

## Domain: PlayerQuery

Pending request for player info. **Pooled.** MAX_ATTEMPTS = 5 inside.

- `Acquire(callback)` — takes from pool (or creates), sets callback, attempts = 0
- `Resolve(player)` — fires callback with Player, returns to pool
- `Attempt()` — returns `true` if attempt recorded, `false` if max reached (expired)

---

## Infrastructure: PlayerQueryResult

DTO returned by WhoService in query results callback. **Pooled.** Valid only during callback — WhoService releases after callback returns.

- `Acquire(name, class, level, race, guild)` — takes from pool (or creates), sets fields
- `Release()` — clears fields, returns to pool
- Getters: `GetName()`, `GetClass()`, `GetLevel()`, `GetRace()`, `GetGuild()`

---

## Infrastructure: WhoService

Manages WHO query lifecycle. Hooks into FriendsFrame and WhoList to intercept results and suppress the WHO UI. In tests, the underlying WoW API functions are mocked.

| Method | Description |
|--------|-------------|
| `SetResultsCallback(callback)` | Registers listener for WHO results. `callback(results, count)` — reused list of `PlayerQueryResult`, valid only during callback. One listener at a time |
| `QueryPlayer(name)` | `SetWhoToUI(1)` + `SendWho('n-"name"')`. Skips `SetWhoToUI` if current player is GM |
| `CancelPlayerQuery()` | `SetWhoToUI(0)`. Call when queue is empty |
| `GetQueryCooldownInSeconds()` | 0 if current player is GM, 30 if Turtle WoW, 5 otherwise |

Internal state:
- Hooks `FriendsFrame_OnEvent` — intercepts `WHO_LIST_UPDATE`, extracts results via `GetWhoInfo`, suppresses original handler
- Hooks `WhoList_Update` — suppresses WHO frame list update during scan
- Manages "scan in progress" flag

---

## Infrastructure: GameAPI

Stateless helpers over WoW API. Replaced with a mock in tests.

| Method | WoW API |
|--------|---------|
| `IsCurrentPlayerGM()` | Checks spellbook for GM abilities |
| `GetTime()` | `GetTime()` |
| `SetWhisperCallback(callback)` | Registers listener for whisper events. `callback(name, isGM)`. Parses chat flags internally |
| `SetTickCallback(callback, interval)` | Calls `callback()` every `interval` seconds. Uses frame `OnUpdate` internally |

---

## TODO

- Cache TTL — evict stale entries after N minutes
- Suppress WHO system messages in chat (e.g. "1 player total")
- Prioritize user-initiated WHO requests (move to front of queue)
- Use friends list data as partial cache (class + level without WHO via `GetFriendInfo`)
- Use guild roster data as cache (`GetGuildRosterInfo` — gives name, rank, level, class, zone, etc.)
- Extract player data from unit tooltip when available (`UnitRace`, `GetGuildInfo`, `UnitClass`)
