# WIM (WoW Instant Messenger)

A World of Warcraft addon for Vanilla WoW (1.12.1) and [Turtle WoW](https://turtlecraft.gg) that gives whispers an instant messenger feel.

WIM provides a dedicated chat window for each person you whisper with, keeping your conversations organized and separate from the main chat frame.

## Features

- **Individual Chat Windows**: Each whisper conversation gets its own resizable window
- **Character Information**: Player details (guild, level, race, class) with class-colored title bars
- **Message History**: Browse past conversations with the built-in history viewer
- **Aliases and Filtering**: Nicknames for players and keyword-based message blocking
- **GM Detection**: Whispers from Game Masters are flagged with a special icon
- **Multi-Language Support**: 9 languages (English, German, Spanish, French, Korean, Portuguese, Russian, Simplified Chinese, Traditional Chinese)

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
- **[Pazza](https://github.com/Pazza)** (Bronzebeard) - Original WIM creator

### Concept
- **Sloans** (Bronzebeard) - Original concept and ideas

### Contributors
- **[shirsig](https://github.com/shirsig)** - Major refactoring, WHO system improvements, /r hotkey fix, whisper autocompletion
- **[KasVital](https://github.com/KasVital)** - Vanilla compatibility fixes, Cyrillic character support
- **[me0wg4ming](https://github.com/me0wg4ming)** - Async WHO loading, GM detection, Turtle WoW optimizations
- **[Refaim](https://github.com/refaim)** - Current maintainer, bug fixes, localization system, code cleanup
- **[DBFBlackbull](https://github.com/DBFBlackbull)** - Dynamic class colors
- **[Kirchlive](https://github.com/Kirchlive)** - Macro whispers fix
- **Claude** (Anthropic) - AI-assisted development and localization

### Special Thanks
- Nachonut (Bronzebeard)
- Everyone in **Resurgence** (Bronzebeard)
- The communities at ui.worldofwar.net and curse-gaming.com
