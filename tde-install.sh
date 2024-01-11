#!/bin/bash

# Namensnennung
echo ' '
echo ' '
echo 'Trinity Desktop Installationsskript von Goos-Habermann.de'
echo 'Modifiziert von Kim Sophie Schlange, am 11. Januar 2024'
echo '============================================================'
echo 'Es in 5 Sekunden der Trinity Desktop installiert'
echo 'Abbruch mit STRG + C'
sleep 5

# root check
if [ $(whoami) != "root" ]
    then
        clear
        echo 'Wir brauchen root Rechte um mit der Installation fortzufahren'
        echo 'Bitte nutzen Sie sudo oder su um mit root Rechten zu arbeiten'
        echo ' '
        echo 'Wenn Sie bei der Debian-Installation ein root Passwort gesetzt haben '
        echo 'dann nutzen Sie bitte "su" und geben das root Passwort ein. '
        echo 'Anschliessend starten Sie das Skript erneuert.'
        echo ' '
        echo 'Falls Sie kein root Passwort vergeben haben, dann nutzen Sie bitte '
        echo ' '
        echo 'sudo ./tde-install.sh'
        echo ' '
        sleep 5
        exit
fi

# Erklärung
clear
echo '============================================================'
echo ' Trinity Installation auf Debian '
echo '============================================================'
echo 'Installationsschritte'
echo '============================================================'
echo '1. Paketquellenkonfiguration'
echo '2. Installation von Trinity'
echo '3. Installation von Firefox'
echo '4. Installation von Flatpak und Discover'
echo '5. Installation von Multimedia-Codecs'
echo '6. Neustart'
echo 'Abbruch mit STRG + C'
sleep 7
# Paketquellen aktualisieren und Nala einrichten

apt update
apt upgrade -y
# Erklärung warum Nala
clear
echo '============================================================'
echo ' Warum ich Nala verwende '
echo '============================================================'
echo ' Nala ist ein apt-Wrapper und nutzt Optimierungen zum '
echo ' Herunterladen und Installieren von Paketen.'
echo '  '
echo ' Durch die Nutzung von Nala wird die Installation '
echo ' beschleunigt und bietet ein Verlaufstool das durch '
echo '   nala history '
echo ' aufgerufen werden kann und Installationen von Paketen '
echo ' verwalten kann. '
echo '  '
echo ' Mehr Infos mit dem Befehl '
echo '    man nala '
echo ' '
echo '============================================================'
sleep 7
apt install nala -y

echo 'deb https://debian.mirror.iphh.net/debian/ bookworm main contrib non-free non-free-firmware' > /etc/apt/sources.list.d/nala-sources.list


# TDE-Paketquellen (Rolling-Release) eintragen
echo 'deb http://mirror.ppa.trinitydesktop.org/trinity-sb bookworm deps-r14 main-r14
#deb-src http://mirror.ppa.trinitydesktop.org/trinity-sb bookworm deps-r14 main-r14' > /etc/apt/sources.list.d/trinity.list


# Paket-Signaturschlüssel importieren
wget http://mirror.ppa.trinitydesktop.org/trinity/deb/trinity-keyring.deb -O /tmp/trinity-keyring.deb
dpkg -i /tmp/trinity-keyring.deb
rm /tmp/trinity-keyring.deb

# Paketliste aktualisieren und Trintiy Paketquellenschlüßel erneuern
nala update
nala upgrade -y

clear
echo '============================================================'
echo ' Paketquellenkonfiguration abgeschlossen '
echo '============================================================'
echo ' Installation von Trinity '
echo '============================================================'
echo '3. Installation von Firefox'
echo '4. Installation von Flatpak und Discover'
echo '5. Installation von Multimedia-Codecs'
echo '6. Neustart'
echo 'Abbruch mit STRG + C'
sleep 5


# Trinity-Desktop-Basispaket installieren
nala install tde-trinity tde-i18n-de-trinity htop -y

nala install tdesudo-trinity ark-trinity filelight-trinity gwenview-i18n-trinity gwenview-trinity k3b-data-trinity k3b-trinity kalarm-trinity kamera-trinity kappfinder-trinity kate-plugins-trinity kate-trinity kaudiocreator-trinity kcalc-trinity kcharselect-trinity kchart-trinity kcontrol-trinity kdbg-trinity kdf-trinity kdiff3-trinity kdvi-trinity kedit-trinity kfind-trinity kfloppy-trinity kgpg-trinity khelpcenter-trinity khexedit-trinity kicker-applets-trinity kicker-trinity kile-trinity kile-trinity-i18n-de kivio-data-trinity kivio-trinity kjots-trinity klaptopdaemon-trinity klipper-trinity kmenuedit-trinity kmilo-trinity kmix-trinity knetworkconf-trinity knotes-trinity koffice-data-trinity koffice-libs-trinity konqueror-nsplugins-trinity konqueror-trinity konsole-trinity konsolekalendar-trinity kooka-trinity kopete-otr-trinity kopete-trinity korganizer-trinity kpager-trinity kpdf-trinity kpersonalizer-trinity krdc-trinity kregexpeditor-trinity krename-trinity kruler-trinity krusader-trinity ksim-trinity ksmserver-trinity ksnapshot-trinity ksplash-trinity ksysguard-trinity ksysguardd-trinity kteatime-trinity ktimer-trinity ktip-trinity kviewshell-trinity kwifimanager-trinity libarts1c2a-trinity:amd64 libartsc0-trinity:amd64 libcvsservice0-trinity libk3b3-extracodecs-trinity libk3b3-trinity libkcddb1-trinity libkipi0-trinity libkleopatra1-trinity libkmime2-trinity libkonq4-trinity libkpimexchange1-trinity libkpimidentities1-trinity libkscan1-trinity libktnef1-trinity libtdepim1a-trinity libtqt3-integration-trinity superkaramba-trinity tdeaddons-tdefile-plugins-trinity tdebase-data-trinity tdebase-runtime-data-common-trinity tdebase-tdeio-plugins-trinity tdebase-tdeio-smb-trinity tdebase-trinity tdebase-trinity-bin tdefilereplace-trinity tdegraphics-tdefile-plugins-trinity tdelibs-data-trinity tdelibs14-trinity tdelirc-trinity tdemultimedia-tdeio-plugins-trinity tdepasswd-trinity tdepowersave-trinity tdeprint-trinity tdessh-trinity tdeutils-trinity tdevelop-data-trinity tdevelop-trinity tdewalletmanager-trinity tdm-trinity trinity-keyring twin-trinity xserver-xorg-input-all network-manager-tde ttf-bitstream-vera filelight-trinity  crystalcursors -y
# Trinity-Desktop-Anwendungen und -Bibliotheken installieren

clear
echo '============================================================'
echo ' Installation von Trinity abgeschlossen '
echo '============================================================'
echo ' Installation von Firefox '
echo '============================================================'
echo '4. Installation von Flatpak und Discover'
echo '5. Installation von Multimedia-Codecs'
echo '6. Neustart'
echo 'Abbruch mit STRG + C'
sleep 5

# Webbrowser einrichten
nala install curl firefox-esr firefox-esr-l10n-de -y


clear
echo '============================================================'
echo ' Installation von Firefox abgeschlossen '
echo '============================================================'
echo ' Installation von Flatpak und Discover '
echo '============================================================'
echo '5. Installation von Multimedia-Codecs'
echo '6. Neustart'
echo 'Abbruch mit STRG + C'
sleep 5


# Flatpak einrichten
nala install plasma-discover plasma-discover-backend-flatpak flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

clear
echo '============================================================'
echo ' Installation von Flatpak und Discover abgeschlossen '
echo '============================================================'
echo '5. Installation von Multimedia-Codecs'
echo '============================================================'
echo '6. Neustart'
echo 'Abbruch mit STRG + C'
sleep 5

# Multimedia einrichten
nala install libavcodec-extra kaffeine-trinity kaffeine-gstreamer-trinity kaffeine-mozilla-trinity -y

clear
echo '============================================================'
echo '  Installation von Multimedia-Codecs abgeschlossen '
echo '============================================================'
echo ' System wird in 5 Sekunden neu gestartet... '
echo '============================================================'
echo 'Abbruch mit STRG + C'
sleep 5

# Neustart (damit alle Paketänderungen aktiv werden)
reboot
