# WIM (WoW Instant Messenger)

A World of Warcraft addon for Vanilla WoW (1.12.1) and [Turtle WoW](https://turtlecraft.gg) that gives whispers an instant messenger feel.

WIM provides a dedicated chat window for each person you whisper with, keeping your conversations organized and separate from the main chat frame.

## Features

- **Individual Chat Windows**: Each whisper conversation gets its own resizable window
- **Character Information**: Display player details (guild, level, race, class) via background /who queries
- **Class Icons and Colors**: Visual indicators for player classes in the title bar
- **Message History**: Record and browse past conversations with the built-in history viewer
- **Alias System**: Assign nicknames to players for easier identification
- **Message Filtering**: Block unwanted messages by keywords/phrases
- **Shortcut Bar**: Quick access to common actions (inspect, trade, invite, target)
- **Timestamps**: Optional timestamps on all messages
- **Window Cascading**: New windows automatically cascade to avoid overlap
- **Minimap Button**: Access conversations and options from a freely movable minimap icon
- **Titan Panel Integration**: Built-in support for Titan Panel
- **URL Detection**: Clickable web addresses in messages
- **GM Detection**: Whispers from Game Masters are flagged with a special icon and `<GM>` tag
- **Block Low Level**: Option to block whispers from players below level 10 (excludes friends, guild members, and players you've whispered)
- **Multi-Language Support**: Available in 9 languages (English, German, Spanish, French, Korean, Portuguese, Russian, Simplified Chinese, Traditional Chinese)

### Turtle WoW Features

- **Cross-Faction Whispers**: Full support for Turtle WoW's cross-faction communication
- **Optimized WHO Cooldown**: Respects Turtle WoW's 30-second WHO cooldown (5 seconds on vanilla)

## Usage

### Basic Commands

| Command | Description |
|---------|-------------|
| `/wim` | Open options window |
| `/wim help` | Open help window |
| `/wim history` | Open history viewer |
| `/wimdebug` | Toggle debug mode for WHO system |

### Advanced Commands

| Command | Description |
|---------|-------------|
| `/wim reset` | Reset all options to default |
| `/wim reset filters` | Reload built-in filter definitions |
| `/wim clear history` | Clear all message history |

### Key Bindings

Check your Key Bindings screen (Escape > Key Bindings) for WIM's available actions:
- Show/Hide all message windows
- Toggle through recent conversations

### Tips

- **Shift + Left-Click** the close button to permanently end a conversation
- **Shift + Scroll Wheel** to page through messages quickly
- **TAB** key toggles between open whisper windows
- Drag the minimap icon anywhere on your screen (enable "Free moving" in options)
- Link items from your inventory, character frame, trade skill windows, and more

## Installation

1. Download and extract to your `Interface/AddOns` folder
2. Ensure the folder is named `WIM`
3. Restart WoW or type `/reload`

## Acknowledgments

### Original Author
- **Pazza** (Bronzebeard) - Original WIM creator

### Concept
- **Sloans** (Bronzebeard) - Original concept and ideas

### Contributors
- **[shirsig](https://github.com/shirsig)** - Major refactoring, WHO system improvements, block low level feature, /r hotkey fix, whisper autocompletion
- **[KasVital](https://github.com/KasVital)** - Vanilla compatibility fixes, Cyrillic character support
- **[me0wg4ming](https://github.com/me0wg4ming)** - Async WHO loading, GM detection, Turtle WoW optimizations
- **[Refaim](https://github.com/refaim)** - Current maintainer, localization system, code cleanup
- **[DBFBlackbull](https://github.com/DBFBlackbull)** - Dynamic class colors
- **[Kirchlive](https://github.com/Kirchlive)** - Macro whispers fix
- **Claude** (Anthropic) - AI-assisted development and localization

### Special Thanks
- Nachonut (Bronzebeard)
- Everyone in **Resurgence** (Bronzebeard)
- The communities at ui.WorldOfWar.net and Curse-Gaming.com

## Links

- [GitHub Repository](https://github.com/refaim/WIM)
- [Turtle WoW](https://turtlecraft.gg)
