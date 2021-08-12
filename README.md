### pdfpopout:
Schnell Fenster-Manager + PDF-Reader in schwebendem Fenster öffnen.

### popoutdisplay_blue
popoutdisplay mit blauem Input. Öffnet Anwendungen in einem schwebendem Fenster. Nützlich z.B., wenn man randlos Videos schauen möchte (am besten mit Fenstermanager).

### topsearch
Tippe einen Teil des Namens des Prozesses ein, den du suchst.

### connect
Verbinde dich manuell mit einem WLAN-Netzwerk. wlp2s0 ersetzen (ls /sys/class/net, iplink, ifconfig oder iw dev).
Einfach Dateien mit Endung ".wlan" anlegen, deren Namen ohne Endung als Parameter übergeben werden.

### connectRE
Parameter "down" um Verbindung vom WLAN-Netzwerk zu trennen. Ohne Parameter wird das Netzwerkinterface wieder aktiviert. wlp2s0 ersetzen (ls /sys/class/net, ip link, ifconfig oder iw dev).

### AccessPoint
Schnell ein temporäres WLAN-Netzwerk erstellen. Bei Bedarf in der Datei noch Passwort anhängen.

### discord-st.sh
Embedde st ("Simple Terminal" von suckless.org) in Discord. Vielleicht nützlich während Voicechats..

### executedwithinpts2.sh / executedwithinpts.sh
Offene Pseude-Terminals (PTS), darin geöffnete Arbeitsverzeichnisse und eventuell welcher Befehl darin ausgeführt wird.  
Version 1 gibt nur Arbeitsverzeichnisse aus und hat einfachere Ausgabe.  
Version 2 hat formatierte Ausgabe, gibt jedoch sehr viele Shell-Prozsse aus. Eventuell die erste Zeile auskommentieren (und auf die Shell anpassen).

### minimizewindows.sh / windowactivate.sh
Erstes Skript minimiert Fenster, die den übergebenen Teil im Titel haben.  
Zweites Skript holt entsprechend ein Fenster in den Vordergrund.  
