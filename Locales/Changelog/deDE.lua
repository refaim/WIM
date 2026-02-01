if GetLocale() ~= "deDE" then return end

WIM_CHANGE_LOG = [[
Version 1.3.7 (02.02.2026)|cffffffff
[*] - Klassenfarben verwenden jetzt die eingebauten RAID_CLASS_COLORS des Spiels (DBFBlackbull)
[*] - Makro-Flüstern behoben: /w Name Nachricht sendet jetzt korrekt (Kirchlive)

Version 1.3.6 (02.02.2026)|cffffffff
[+] - Vollständige Lokalisierung: komplette Übersetzung der Benutzeroberfläche für alle 9 unterstützten Sprachen
[+] - Änderungsprotokoll jetzt in alle unterstützten Sprachen übersetzt
[+] - README-Dokumentation hinzugefügt

Version 1.3.5b (02.02.2026)|cffffffff
[*] - WHO-Abklingzeit: 30s für Turtle WoW, 5s für Vanilla

Version 1.3.5a (02.02.2026)|cffffffff
[*] - Option "Niedrigstufige blockieren" wieder aktiviert (funktioniert mit fraktionsübergreifend)

Version 1.3.5 (29.12.2025)|cffffffff
[+] - WHO-Info wird jetzt asynchron geladen (Nachrichten werden sofort angezeigt)
[+] - Round-Robin WHO-Warteschlange für faire Verteilung über Flüsterfenster
[+] - Spieler werden nach 5 fehlgeschlagenen Versuchen automatisch aus der WHO-Warteschlange entfernt
[+] - GM-Flüster-Erkennung und -Markierung (Turtle WoW)
[+] - Befehl /wimdebug zum Debuggen des WHO-Systems hinzugefügt
[*] - WHO-Abklingzeit auf 30s für Turtle WoW-Kompatibilität erhöht

Version 1.3.4 (28.07.2025)|cffffffff
[*] - Anzeige kyrillischer Zeichen behoben
[+] - Änderungen von KasVital übernommen

Version 1.3.3 (27.12.2017)|cffffffff
[+] - Refaktorisierung durch shirsig

Version 1.3.2 (05.01.2017)|cffffffff
[+] - Übersetzung ins Russische (ruRU)

Version 1.3.1 (17.10.2006)|cffffffff
[+] - Neues Minimap-Symbol-Menü erstellt. Blizzards Drop-Down-Menü wird nicht mehr verwendet.
[+] - Gespräche können jetzt über das Minimap-Symbol-Menü geschlossen werden.
[*] - Erforderliche Codeänderungen für Titan-Plugin und neues Minimap-Symbol-Menü vorgenommen.
[*] - Who-Fenster erscheint nicht mehr bei Gesprächen mit GM oder Offline-Benutzer.
[+] - WIM ersetzt die Schaltfläche "Nachricht senden" im Freundefenster.
[+] - Fängt jetzt /w und /whisper-Befehle ab und öffnet ein Nachrichtenfenster.
[+] - Option zum Aktivieren/Deaktivieren des Abfangens von Flüster-Befehlen hinzugefügt.
[+] - Unterstützung für LootLink hinzugefügt.
[+] - Unterstützung für EngInventory hinzugefügt.
[+] - Slash-Befehle können jetzt im Nachrichtenfenster ausgeführt werden.

|rVersion 1.2.13 (03.10.2006)|cffffffff
[*] - Fehler behoben, der auftritt, wenn Titan nicht geladen ist.

|rVersion 1.2.12 (03.10.2006)|cffffffff
[+] - Unterstützung für AtlasLoot hinzugefügt.
[+] - Option hinzugefügt, den Fokus nur in einer Hauptstadt zu behalten.
[+] - Option hinzugefügt, AFK- und DND-Nachrichten nicht anzuzeigen.
[+] - Option zum Aktivieren/Deaktivieren der 'Escape-Taste' zum Schließen von Fenstern hinzugefügt.
[+] - Tastenbelegungen 'Alle Nachrichten anzeigen' und 'Alle Nachrichten ausblenden' hinzugefügt.
[+] - Scrollleiste zum Tab Allgemeine Optionen hinzugefügt. (kein Platz mehr!).
[*] - nil-Fehler in Funktion WIM_LoadGuildList() behoben. (Danke Misschief).
[+] - Gegenstände können jetzt aus dem Beutefenster verlinkt werden.
[+] - Unterstützung für AllInOneInventory hinzugefügt.
[*] - Who-Fenster sollte nicht mehr bei ähnlichen Namen erscheinen.
[*] - Titan ist jetzt als optionale Abhängigkeit aufgeführt.

|rVersion 1.2.11 (29.09.2006)|cffffffff
[*] - Rechtschreibfehler auf dem Fenster-Tab behoben.
[*] - /who-Anfrage wird nicht mehr für realmübergreifende Benutzer ausgeführt.
[+] - Informationen über realmübergreifende Benutzer aus Schlachtzuginfo holen.
[*] - Nachrichtenumschaltfenster zeigt wie beabsichtigt nur eindeutige Benutzer an.
[+] - Umschalten bringt das Fenster jetzt nach vorne, wenn es hinter einem anderen liegt.
[+] - Umschalten fokussiert jetzt automatisch, wenn eine Nachricht ausgewählt wird.
[+] - Die TAB-Taste schaltet jetzt zwischen Fenstern um, wenn bereits in einem fokussiert.
[+] - Gegenstände können jetzt aus dem Inspektionsfenster verlinkt werden.
[+] - Gegenstände können jetzt in SuperInspect verlinkt werden.
[+] - Tab "Wusstest du schon?" in der Hilfe hinzugefügt.
[+] - Tab "Danksagungen" in der Hilfe hinzugefügt.
[+] - Schaltfläche zum Optionsfenster für Hilfe-Zugriff hinzugefügt.

|rVersion 1.2.10 (26.09.2006)|cffffffff
[*] - Kleine Anpassung am Fensterfokus-Verhalten vorgenommen.
[+] - Optionsfenster um Aliasing-, Filter- & Verlaufsoptionen erweitert
[+] - Alias-Filterung hinzugefügt: (1: Name ersetzen; 2: als Kommentar anzeigen);
[+] - Schlüsselwort/Phrasen-Filterung hinzugefügt: (1: Ignorieren (durch WIM); 2: Blockieren (komplett))
[+] - Standard CT_RABM-Filterregeln hinzugefügt.
[+] - Verlaufs-Engine und Optionen hinzugefügt.
[+] - Verlaufsanzeige hinzugefügt. ( /wim history )
[*] - Shortcut-Leiste behält jetzt ihre Transparenz von 100%.
[+] - Schaltfläche zum Nachrichtenfenster für Verlaufszugriff hinzugefügt, wenn Verlauf existiert.
[+] - Optionen zum Festlegen der Standard-Fensterposition hinzugefügt.
[+] - Option zum Aktivieren/Deaktivieren der Fensterkaskadierung hinzugefügt.
[+] - Option zum Ändern der Richtung der Fensterkaskadierung hinzugefügt.
[+] - Tastenbelegungen hinzugefügt.
[+] - Tastenbelegung zum Durchblättern kürzlicher Gespräche hinzugefügt.
[+] - Hilfebildschirm hinzugefügt. ( /wim help )

|rVersion 1.1.15 (19.09.2006)|cffffffff
[+] - Option zum Anzeigen von Charakterinfo hinzugefügt (/who-Anfragen).
[+] - Option zum Anzeigen des Klassensymbols hinzugefügt. (Standardsymbol aktualisiert).
[*] - Minimap-Symbol wird nicht mehr über allen anderen Fenstern angezeigt, außer im freien Bewegungsmodus.
[+] - Gegenstände können jetzt im Charakterfenster verlinkt werden.
[+] - Gegenstände können jetzt aus Berufe-Fenstern verlinkt werden.
[+] - Gegenstände können jetzt aus Handwerks-Fenstern verlinkt werden (z.B.: Verzauberung)
[+] - Option zum Setzen der Klassenfarbe für Titelleistentext hinzugefügt.
[+] - Option zum Anzeigen von Zeitstempeln hinzugefügt.
[+] - Option zum Aktivieren/Deaktivieren von WIM hinzugefügt.
[+] - Shortcut-Leiste (und entsprechende Optionen) hinzugefügt.
[+] - Detaillierte Charakterinfo hinzugefügt. (Gilde, Stufe, Rasse, Klasse).

|rVersion 1.1.4 (15.09.2006)|cffffffff
[+] - Integriertes Titan-Plugin hinzugefügt.
[*] - Transparenz beeinflusst Chat-Text nicht mehr.
[*] - Minimap-Menü öffnet sich jetzt wie beabsichtigt nach links.
[+] - Neue Grafiken für Nachrichtenfenster erstellt.
[+] - Nachrichtenfenster-Rahmen neu erstellt - jetzt größenveränderbar!
[+] - Optionsfenster reorganisiert & Tab für Fensteroptionen erstellt
[-] - Option 'Minimap-Tooltip anzeigen' entfernt.
[+] - Option 'Tooltips anzeigen' hinzugefügt.
[*] - Option zum Popup bei Antworten umformuliert (funktionierte wie beabsichtigt).
[*] - Fenster können nicht mehr außerhalb der Oberfläche positioniert werden.
[+] - Option zum alphabetischen Sortieren der Gesprächsliste hinzugefügt (sonst nach Empfangsreihenfolge).
[+] - Optionen zum Ändern von Höhe und Breite der Nachrichtenfenster hinzugefügt.
[+] - Nachrichtenfenster können jetzt am Chat-Rahmen gezogen werden.
[+] - Klicken auf Chat-Rahmen setzt jetzt den Fokus auf das Nachrichtenfeld.
[+] - Möglichkeit zum Schließen eines Gesprächs hinzugefügt.
[+] - Frei bewegliches Minimap-Symbol hinzugefügt. (Überall auf dem Bildschirm platzieren).
[+] - Shift-Klick auf Scroll-Taste blättert jetzt seitenweise.
[+] - Shift-Mausrad blättert jetzt seitenweise.
[+] - Option zum Deaktivieren von Popups im Kampf hinzugefügt.
[+] - Klassensymbole zum Nachrichtenfenster hinzugefügt.

|rVersion 1.0.19 (12.09.2006) |cffffffff
[*] - Problem mit Ingame-Sprachen (Gemeinsprache/Orcisch) behoben. Dies sollte auch Probleme mit anderen sprachlichen WoW-Interfaces lösen.
[*] - Einige Funktions-Hooks neu programmiert, um doppelte Nachrichten durch Addon-Konflikte zu vermeiden.

|rVersion 1.0.18 (12.09.2006) |cffffffff
[!] - Erste öffentliche Veröffentlichung.

]]
