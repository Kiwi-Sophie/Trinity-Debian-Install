# Trinity-Debian-Install
Ein Installationsskript des Trinitydesktops für Debian. Grundlage ist ein Bash-Skript von Goos-Habermann.de, welches ich bearbeitet habe.

## Warum das ganze?
Leider bietet der Debian Installer keine Möglichkeit an, den Trinitydesktop zu installieren. Von [Goos-Habermann.de](https://www.goos-habermann.de/re/21/TDE_auf_Debian11/), bzw. den [YouTuber "Nicht der Weisheit letzter Schluß"](https://www.youtube.com/watch?v=IvrU-oQSZxM) habe ich das Installationsskript was er in seinem Video verwendet ein wenig angepasst.

## Was wird Installiert
 1. Nala ein apt-Wrapper wird installiert
 2. Es wird der Trinitydesktop getreu des Skripts von Herrn Habermann installiert.
 3. Firefox-ESR
 4. Flatpak und Discover
 5. *Properitär* Multimedia-Codecs und Kaffeine

## Bedienung
Einfach das Skript als root ausführen und das Skript führt Euch durch die Installation. Sollte zum Beispiel nur die Installation von Trinity gewünscht sein, so kann man das Skript nach Installation des Desktops durch Drücken von `` STRG + C `` abgebrochen werden. Das Skript pausiert nach jedem Vorgang für 5 Sekunden und zeigt die Option des Abbruchs auch an.
