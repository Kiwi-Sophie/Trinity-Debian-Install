# Trinity-Debian-Install
Ein Installationsskript des Trinitydesktops für Debian. Grundlage ist ein Bash-Skript von Goos-Habermann.de, welches ich bearbeitet habe.

## Warum das ganze?
Leider bietet der Debian Installer keine Möglichkeit an, den Trinitydesktop zu installieren. Von [Goos-Habermann.de](https://www.goos-habermann.de/re/21/TDE_auf_Debian11/), bzw. den [YouTuber "Nicht der Weisheit letzter Schluß"](https://www.youtube.com/watch?v=IvrU-oQSZxM) habe ich das Installationsskript was er in seinem Video verwendet ein wenig angepasst.

## Was wird Installiert
 1. Nala ein apt-Wrapper wird installiert
 2. Es wird der Trinitydesktop, angelehnt an das ursprüngliche Skript - *Es wurde ein Metapaket mit mehreren Abhängigkeiten als beim Original verwendet*, installiert
 3. Firefox-ESR
 4. Flatpak und Discover
 5. *Properitär* Multimedia-Codecs und Kaffeine

## Bedienung
``chmod +x tde-install.sh``
Einfach das Skript als root ausführen und das Skript führt Euch durch die Installation. Sollte zum Beispiel nur die Installation von Trinity gewünscht sein, so kann man das Skript nach Installation des Desktops durch Drücken von `` STRG + C `` abgebrochen werden. Das Skript pausiert nach jedem Vorgang für 5 Sekunden und zeigt die Option des Abbruchs auch an.

### Löschen der Netzwerkkonfiguration des Debian Installers
Der Debian Installer speichert standardmäßig die für die Installation verwendete Netzwerkkonfiguration unter ``/etc/network/interfaces`` ab. Damit der Network Manager und die GUI des Trinity Desktop die Netzwerke verwalten kann wird am Ende vor dem Neustart diese Datei verschoben, nach ``~/Trinity-Debian-Install/network-backup/interfaces``.

# Firefox.sh

Ein Skript um Firefox mit [Arkenfox](https://github.com/arkenfox/user.js/) sicherer zu gestalten und um mit [Leptons Firefox UI Fix](https://github.com/black7375/Firefox-UI-Fix/) den Firefox optisch zu verbessern.

## Bedienung
``chmod +x firefox.sh``

``./firefox.sh``
Anschließend das Design auswählen, Lepton ist ähnlich wie Chromium basierende Browser, Proton ist der aktuelle Firefox Look und Photon ist der vorherige Look vom Firefox.
Danach das Profil mit der Leertaste auswählen, bei Debian ist es standardmäßig das Profil mit ``.default-esr`` am Ende, und mit Eingabetaste bestätigen.
