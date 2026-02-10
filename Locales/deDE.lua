if GetLocale() ~= "deDE" then return end

BINDING_NAME_WIMSHOWNEW = "Neue Nachrichten anzeigen";
BINDING_NAME_WIMHISTORY = "Verlauf anzeigen";
BINDING_NAME_WIMENABLE = "Aktivieren/Deaktivieren";
BINDING_NAME_WIMTOGGLE = "Nachrichten umschalten";
BINDING_NAME_WIMSHOWALL = "Alle Nachrichten anzeigen";
BINDING_NAME_WIMHIDEALL = "Alle Nachrichten ausblenden";

-- Class Names
WIM_LOCALIZED_DRUID = "Druide";
WIM_LOCALIZED_HUNTER = "Jäger";
WIM_LOCALIZED_MAGE = "Magier";
WIM_LOCALIZED_PALADIN = "Paladin";
WIM_LOCALIZED_PRIEST = "Priester";
WIM_LOCALIZED_ROGUE = "Schurke";
WIM_LOCALIZED_SHAMAN = "Schamane";
WIM_LOCALIZED_WARLOCK = "Hexenmeister";
WIM_LOCALIZED_WARRIOR = "Krieger";

--icons.xml
WIM_L_CONVERSATIONS="Unterhaltungen";
WIM_L_CONVERSATIONSMENU="Unterhaltungsmenü";
WIM_L_SHOWNEWMESSAGES="Neue Nachrichten anzeigen";
WIM_L_WIMOPTIONS="WIM Optionen";
WIM_L_RIGHTCLICK="Rechtsklick";
WIM_L_LEFTCLICK="Linksklick";
--options.xml
WIM_L_ENABLEWIM="WIM aktivieren";
WIM_L_DISPLAYOPT="Anzeigeoptionen";
WIM_L_INCOMWHISP="Eingehende Flüstern";
WIM_L_OUTGOMWHISP="Ausgehende Flüstern";
WIM_L_SYSMESS="Systemnachrichten";
WIM_L_ERRORMESS="Fehlermeldungen";
WIM_L_WEBADDRESSLINK="Webadressenlink";
WIM_L_SHOWSHORTCUTBAR="Schnellleiste anzeigen.";
WIM_L_THISSETLIMIT="Diese Einstellung begrenzt\ndie minimale Fensterhöhe.";
WIM_L_SHOWTIMESTAMPS="Zeitstempel anzeigen.";
WIM_L_SHOWCHARINFO="Charakterinfo anzeigen:";
WIM_L_CHANGESWILLBEMADE="Änderungen werden nur bei neuen\nNachrichtenfenstern angewendet.\n|cffffffff(Erfordert Hintergrund /who Abfrage.)|r";
WIM_L_CLASSICONS="Klassensymbole";
WIM_L_CHANGESWILLBEMADENEWMESS="Änderungen werden nur bei neuen\nNachrichtenfenstern angewendet.";
WIM_L_CLASSCOLORS="Klassenfarben";
WIM_L_CHARDETAILS="Charakterdetails";
WIM_L_MINIMAPICON="Minikartensymbol";
WIM_L_SHOWMINIMAPICON="Minikartensymbol anzeigen";
WIM_L_FREEMOVING="Freie Bewegung";
WIM_L_FREEMOVINGTOOLTIP="Wenn aktiviert, können Sie mit\nShift-Linksklick das Minikartensymbol\nfrei auf dem Bildschirm bewegen.";
WIM_L_WINDOWS=" Fenster ";
WIM_L_GENERAL=" Allgemein ";
WIM_L_FILTERS=" Filter ";
WIM_L_HISTORY=" Verlauf ";
WIM_L_HISTORYAUTOFOCUS="Fenster bei Popup automatisch fokussieren.";
WIM_L_HISTORYFOCUSSENDMESS="Fokus nach Senden einer Nachricht behalten.";
WIM_L_HISTORYFOCUSONLYCITY="Nur in Hauptstädten.";
WIM_L_SHOWTOOLTIPS="Tooltips anzeigen.";
WIM_L_POPUPWINDOWWHENSENDINGWHISP="Fenster beim Senden von Flüstern öffnen.";
WIM_L_POPUPWINDOWWHENRECEIVINGNEWWHISP="Fenster bei neuen Flüstern öffnen.";
WIM_L_POPUPWINDOWWHENRECEIVINGREPLIES="Fenster bei Antworten öffnen.";
WIM_L_DISABLEPOPUPSINCOMBAT="Popups im Kampf deaktivieren.";
WIM_L_SUPRESSWHISPFROMDEFCHAT="Flüstern im Standardchat unterdrücken.";
WIM_L_PLAYSOUND="Sound bei Nachrichtenempfang abspielen.";
WIM_L_SORTCONV="Unterhaltungsliste alphabetisch sortieren.";
WIM_L_AFKANDDNDMESS="AFK und DND Nachrichten anzeigen.";
WIM_L_ESCTOCLOSEWINDOWS="'Escape-Taste' zum Schließen verwenden.";
WIM_L_ESCTOCLOSEWINDOWSTOOLTIP="Die 'Escape-Taste' hat ihre Einschränkungen. |cffffffffBeispiel: Fenster schließen sich beim Öffnen der Karte.|r";
WIM_L_INTERCEPTWHISPCOM="Flüster-Befehle abfangen.";
WIM_L_INTERCEPTWHISPCOMTOOLTIP="WIM fängt alle Flüster-Befehle ab und öffnet automatisch ein neues Nachrichtenfenster. (Beispiel: /w oder /whisper).";
WIM_L_CASCADINGDIR="Kaskadierung aktivieren. Richtung:";
WIM_L_SETLOC="Position setzen";
WIM_L_ALIASING="Aliase aktivieren";
WIM_L_SHOWASCOMMENT="Als Kommentar anzeigen";
WIM_L_BUTNAME="Name";
WIM_L_BUTALIAS="Alias";
WIM_L_ADD="Hinzufügen";
WIM_L_ADDNEWALIAS="Neuen Alias hinzufügen";
WIM_L_REMOVE="Entfernen";
WIM_L_EDIT="Bearbeiten";
WIM_L_EDITALIAS="Alias bearbeiten";
WIM_L_ENABLEFILTER="Filter aktivieren";
WIM_L_KEYWORDSANDPHRASES="Schlüsselwörter/Phrasen";
WIM_L_ACTION="Aktion";
WIM_L_ADDNEWFILTER="Neuen Filter hinzufügen";
WIM_L_EDITFILTER="Filter bearbeiten";
WIM_L_ENABLEHISTORY="Verlauf aktivieren";
WIM_L_RECEVERYONE="Alle aufzeichnen";
WIM_L_RECFRIENDS="Freunde aufzeichnen";
WIM_L_RECGUILD="Gilde aufzeichnen";
WIM_L_INCOMMESS="Eingehende Nachrichten";
WIM_L_OUTGOMMESS="Ausgehende Nachrichten";
WIM_L_SHOWHISTORYINMESS="Verlauf in Nachricht anzeigen:";
WIM_L_SETMAXMESSPERUSER="Max. Nachrichten pro Benutzer:";
WIM_L_DELMESSOLDERTHAN="Nachrichten löschen, älter als:";
WIM_L_RECORDEDUSERS="Aufgezeichnete Benutzer";
WIM_L_SAVEDMESS="Gespeicherte Nachrichten";
WIM_L_DELUSER="Benutzer löschen";
WIM_L_VIEWHISTORY="Verlauf anzeigen";
WIM_L_CHARNAME="Charaktername";
WIM_L_CHARALIAS="Charakter-Alias";
WIM_L_CANCEL="Abbrechen";
WIM_L_OK="OK";
WIM_L_PERFORMFOLLACT="Folgende Aktion ausführen:";
WIM_L_ERREXAMPLEERRMESS="FEHLER: Beispielfehlermeldung";
WIM_L_KEYWORDSANDPHRASETOFILTER="Schlüsselwort/Phrase zum Filtern";
WIM_L_IGNORE="Ignorieren";
WIM_L_BLOCK="Blockieren";
WIM_L_PAZZA="Pazza";
WIM_L_NONEWMESS="Keine neuen Nachrichten.";
WIM_L_RECENTCONV="Letzte Unterhaltung %d von %d";
WIM_L_WIMDOC="WIM Dokumentation";
WIM_L_DESCRIPTION=" Beschreibung ";
WIM_L_VERSIONHISTORY=" Versionsverlauf ";
WIM_L_DIDYOUKNOW=" Wussten Sie? ";
WIM_L_CREDITS=" Credits ";
WIM_L_BLOCKLEVEL="Flüstern von Spielern unter Stufe 10 blockieren.";
WIM_L_BLOCKLVL="WIM zeigt keine Flüstern von Spielern unter Stufe 10 an, außer von Freunden, Gildenmitgliedern oder Spielern, denen Sie in dieser Sitzung selbst geflüstert haben.";
--options.lua
WIM_L_ICONPOSIT="Symbolposition";
WIM_L_FONTSIZE="Schriftgröße";
WIM_L_WINDOWSIZEPERC="Fenstergröße (Prozent)";
WIM_L_TRANSPARENCYPERC="Transparenz (Prozent)";
WIM_L_WINDOWWIDTH="Fensterbreite";
WIM_L_WINDOWHEIGHT="Fensterhöhe";
WIM_L_UP="Oben";
WIM_L_DOWN="Unten";
WIM_L_LEFT="Links";
WIM_L_RIGHT="Rechts";
WIM_L_UPANDLEFT="Oben & Links";
WIM_L_UPANDRIGHT="Oben & Rechts";
WIM_L_DOWNANDLEFT="Unten & Links";
WIM_L_DOWNANDRIGHT="Unten & Rechts";
WIM_L_DRAGTOSETDEFSPAWN="Ziehen, um Standardposition\nfür Nachrichtenfenster zu setzen.";
WIM_L_DAY="Tag";
WIM_L_WEEK="Woche";
WIM_L_MONTH="Monat";
WIM_L_ERRINVALIDKEYWORD="FEHLER: Ungültiges Schlüsselwort/Phrase!";
WIM_L_ERRKEYWORDALREADYUSED="FEHLER: Schlüsselwort/Phrase wird bereits verwendet!";
WIM_L_ERRNAMEALREADYUSED="FEHLER: Name wird bereits verwendet!";
WIM_L_ERRINVALIAS="FEHLER: Ungültiger Alias!";
WIM_L_ERRINVNAME="FEHLER: Ungültiger Name!";
WIM_L_WINDOWHEIGHTLIM="Fensterhöhe |cffffffff(Begrenzt durch Schnellleiste)|r";
--history.lua
WIM_L_NONESHOWALL="Keine (Alle anzeigen)";
--history.xml
WIM_L_HISTORYVIEWER="WIM Verlaufsanzeige";
WIM_L_USERS="Benutzer";
WIM_L_FILTERS2="Filter";
WIM_L_MESS="Nachrichten";
--urlcopy.xml
WIM_L_URLCOPY="URL kopieren";
--wim.lua
WIM_L_NONE=" - Keine -";
WIM_L_NONEC="|cffffffff - Keine -";
WIM_L_INSPECT="Untersuchen";
WIM_L_TRADE="Handeln";
WIM_L_INVITE="Einladen";
WIM_L_TARGET="Ziel auswählen";
WIM_L_GAMEMASTER="Spielleiter";
WIM_L_DATE_FORMAT="%d.%m.%y";
WIM_L_NEWMESSAGE="Neue Nachricht!";
WIM_L_CONVCLOSED="Unterhaltung geschlossen.";
WIM_L_PURGEDMESSAGES="[WIM]: %d veraltete Nachrichten aus dem Verlauf gelöscht.";
--wim_titan.lua
WIM_L_MESSAGES="Nachrichten: ";
--wim.xml
WIM_L_XTOOLTIP="Shift &amp; Linksklick, um Unterhaltung zu beenden.";
WIM_L_HISTORYTOOLTIP="Klicken, um Nachrichtenverlauf anzuzeigen.";
WIM_L_RUSUREYOUWANTIGNORE="Sind Sie sicher, dass Sie\ndiesen Benutzer ignorieren möchten?";

WIM_DESCRIPTION = [[
WIM (WoW Instant Messenger)
|cffffffff
WIM ist genau das, was der Name sagt; eine Instant-Messenger-Oberfläche für Ihre Flüstern im Spiel. Es wurde speziell entwickelt, um Ihre Oberfläche nicht zu stören (im Raid) und gleichzeitig den Komfort eines Chat-Fensters für jeden Benutzer zu bieten.

Schauen Sie in Ihre Tastaturbelegung und suchen Sie nach WIMs verfügbaren Aktionen.
|r
Nützliche Befehle:
/wim			|cffffffff- Optionsfenster|r
/wim history	|cffffffff- Verlaufsanzeige|r
/wim help		|cffffffff- (dieses Fenster)|r

Erweiterte Befehle:
/wim reset			|cffffffff- Alle Optionen zurücksetzen.|r
/wim reset filters	|cffffffff- Filter-Definitionen neu laden.|r
/wim clear history	|cffffffff- Verlauf löschen.|r

WIM integriert sich in folgende Addons:|cffffffff
TitanPanel|r
]]

WIM_DIDYOUKNOW = [[
Wussten Sie...|cffffffff dass Sie mit dem Befehl |r/wim |cffffffffdie Optionsoberfläche öffnen können, um WIM anzupassen?|r

Wussten Sie...|cffffffff dass WIM ein eingebautes Titan Panel Plugin hat? Suchen Sie es im Plugin-Menü von Titan!|r

Wussten Sie...|cffffffff dass Sie unter "Tastaturbelegung" im Hauptmenü nützliche Tastenkombinationen für WIM finden?|r

Wussten Sie...|cffffffff dass Sie das Minikartensymbol frei bewegen können? Im freien Modus können Sie mit Shift-Linksklick das Symbol überall hin ziehen.|r

Wussten Sie...|cffffffff dass Sie mit der Tab-Taste zwischen Nachrichten wechseln können?|r

Wussten Sie...|cffffffff dass WIM so viele Optionen hat, dass es eine Scrollleiste im Allgemein-Tab gibt? Schauen Sie mal rein!|r
]]

WIM_CREDITS = [[
WIM (WoW Instant Messenger) von Pazza <Bronzebeard>.
|cffffffffDas Konzept und die Ideen stammen von Sloans <Bronzebeard>.|r

Ich möchte allen danken, die beim Testen von WIM geholfen und ihr Feedback und Vorschläge eingereicht haben:
|cffffffff
- Nachonut <Bronzebeard>
- Sloans <Bronzebeard>
- Alle in Resurgence <Bronzebeard>
|r

Ich möchte auch allen danken, die auf ui.WorldOfWar.net und Curse-Gaming.com mitgewirkt haben.
]]
