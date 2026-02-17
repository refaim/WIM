if GetLocale() ~= "enGB" then return end

WIM_CHANGE_LOG = [[
|rVersion 1.3.11 (18/02/2026)|cffffffff
[*] - "Show character info" checkbox now properly controls player lookups
[*] - Fixed game freezing caused by player lookup (/who) getting stuck

|rVersion 1.3.10 (14/02/2026)|cffffffff
[*] - Shift+click linking now works reliably in WIM windows (items, quests, spells, etc.)
[*] - Links are no longer duplicated when both WIM and the default chat are open
[*] - Improved compatibility with pfQuest and other addons that use shift+click linking
[*] - /wim reset now properly resets all settings
[*] - The "Intercept whisper slash commands" option now works correctly
[*] - Player info (level, class, guild) no longer fails to load for some players
[*] - Improved addon performance

|rVersion 1.3.9 (11/02/2026)|cffffffff
[*] - Fixed a crash that could occur on login
[*] - History popup now shows the correct number of messages
[*] - Using /who manually no longer gets intercepted by WIM
[*] - New default settings now apply correctly when updating from an older version
[*] - Fixed shift+click on empty equipment and inventory slots
[*] - Fixed shift+click on reagents in TradeSkill and Craft windows sometimes linking the wrong item
[*] - Fixed item clicks being processed twice with AllInOneInventory or EngInventory addons
[*] - Whisper name autocomplete now correctly suggests the first matching name
[*] - Fixed potential errors when closing windows via Escape or other addons

|rVersion 1.3.8 (11/02/2026)|cffffffff
[*] - Shift+click in the Quest Log now links quests and their rewards into WIM windows
[*] - Chat Reply keybinding no longer requires pressing twice to focus
[*] - Fixed a crash that could occur when closing a window during WHO lookup
[*] - History date filter no longer resets when clicking the same name
[*] - Fixed "&" displaying as "&amp;" in close button tooltip
[+] - Date format in message history now matches your game language
[-] - Removed outdated default spam filters

|rVersion 1.3.7 (02/02/2026)|cffffffff
[*] - Class colors now accurately match the game defaults (DBFBlackbull)
[*] - Whisper macros (/w Name message) now send correctly (Kirchlive)

|rVersion 1.3.6 (02/02/2026)|cffffffff
[+] - Full interface translation for all 9 supported languages

|rVersion 1.3.5 (29/12/2025)|cffffffff
[+] - Messages now appear instantly; player info loads in the background (me0wg4ming)
[+] - GM whispers are now highlighted (me0wg4ming)

|rVersion 1.3.4 (28/07/2025)|cffffffff
[*] - Fixed cyrillic character display
[+] - Localization and UI improvements (KasVital)

|rVersion 1.3.3 (27/12/2017)|cffffffff
[+] - refactoring by shirsig

|rVersion 1.3.2 (05/01/2017)|cffffffff
[+] - translated into ruRU

|rVersion 1.3.1 (17/10/2006)|cffffffff
[+] - Created new minimap icon menu. No longer using Blizzards Drop Down Menu.
[+] - You can now close conversations from the minimap icon menu.
[*] - Made required code changes for titan plugin and new minimap icon menu.
[*] - Who window no longer pops up when speaking with GM or offline user.
[+] - WIM replaces "Send Message" button in the Friends Frame.
[+] - Now interecepts /w and /whisper commands and opens a message window.
[+] - Added option to enable/disable whisper slash command intercepting.
[+] - Added support for LootLink.
[+] - Added support for EngInventory.
[+] - You can now execute slash commands inside a message window.

|rVersion 1.2.13 (03/10/2006)|cffffffff
[*] - Fixed bug that causes error if titan is not loaded.

|rVersion 1.2.12 (03/10/2006)|cffffffff
[+] - Added support for AtlasLoot.
[+] - Added option to only keep focus while in a major city.
[+] - Added option to not show AFK and DND messages.
[+] - Added option to Enable/Disable use of 'Escape Key' to close windows.
[+] - Added 'Show' and 'Hide All Messages' key bindings.
[+] - Added scroll bar to general options tab. (out of room!).
[*] - Fixed nil error in function WIM_LoadGuildList(). (thanks Misschief).
[+] - You can now link items from the loot window.
[+] - Added support for AllInOneInventory.
[*] - Who window should no longer pop up when finding similar names.
[*] - Titan is now listed as an optional dependency.

|rVersion 1.2.11 (29/09/2006)|cffffffff
[*] - Fixed spelling mistake on Windows tab.
[*] - No longer run /who request on cross-realm users.
[+] - Get information on cross-realm users from raid info.
[*] - Message toggle window only shows unique users as intended.
[+] - Toggling window now brings it to front if behind another window.
[+] - Toggling windows now auto focuses when message selected.
[+] - The TAB key now toggles windows while already focused in another window.
[+] - You can now link items from the inspect screen.
[+] - You can now link items in SuperInspect.
[+] - Added "Did you know?" tab in help.
[+] - Added "Credits" tab in help.
[+] - Added button to option screen to access help.

|rVersion 1.2.10 (26/09/2006)|cffffffff
[*] - Made a minor adjustment to window focusing behavior.
[+] - Modified options window to include aliasing, filtering & History options
[+] - Added Alias Filtering: (1: replace name; 2: show as comment);
[+] - Added Keyword/Phrase Filtering: (1: Ignore (by WIM); 2: Block (all together))
[+] - Added default CT_RABM filter rules.
[+] - Added history engine and options.
[+] - Added history viewer.   ( /wim history )
[*] - Shortcut bar now retains its transparency of 100%.
[+] - Added button to message window to access history if history exists.
[+] - Added options to set default window position.
[+] - Added option to Enable/Disable window cascading.
[+] - Added option to change the direction if window cascading.
[+] - Added key bindings.
[+] - Added a key binding to toggle through recent conversations.
[+] - Added a help screen. ( /wim help )

|rVersion 1.1.15 (19/09/2006)|cffffffff
[+] - Added option to show character info (/who requests).
[+] - Added option to show class icon. (updated default icon).
[*] - Minimap icon no longer shows on top of all other windows unless its in free moving mode.
[+] - You can now link items in your character frame.
[+] - You can now link items from trade skill windows.
[+] - You can now link items from crafting windows (ex: Enchanting)
[+] - Added option to set class color to title bar text.
[+] - Added option to display timestamps.
[+] - Added option to Enable/Disable WIM.
[+] - Added shortcut bar (and appropriate options).
[+] - Added detailed character info. (Guild, level, race, class).

|rVersion 1.1.4 (15/09/2006)|cffffffff
[+] - Added built-in Titan plugin.
[*] - Transparency no longer affects chat text.
[*] - Minimap menu now opens to the left the way intended.
[+] - Created new graphics for message window.
[+] - Recreated message window frame - now sizable!
[+] - Reorganized option window & created tab for window options
[-] - Removed option 'Show minimap tooltip'.
[+] - Added options 'Show tooltips'.
[*] - Reworded option to pop up when receiving replies (worked as intended).
[*] - Windows can no longer positioned outside of the interface.
[+] - Added option to sort conversation list alphabetically (otherwise sort by order received).
[+] - Added options to change height and width of message windows.
[+] - Message windows can now be dragged by the chat frame.
[+] - Clicking chat frame will now set focus to message box.
[+] - Added the ability to close a conversation.
[+] - Added freely movable minimap icon. (Move anywhere on your screen).
[+] - Shift-Click scroll button now pages up & down.
[+] - Shift-ScrollWheel now pages up and down.
[+] - Added option to disable popups when in combat.
[+] - Added class icons to message window.

|rVersion 1.0.19 (12/09/2006) |cffffffff
[*] - Fixed the problem with in game languages (Common/Orcish). This should also resolve problems with other lingual wow interfaces as well.
[*] - Recoded some function hooks to avoid receiving duplicate messages due to addon conflicts.

|rVersion 1.0.18 (12/09/2006) |cffffffff
[!] - Initial public release.

]]
