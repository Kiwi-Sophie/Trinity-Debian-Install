#!/bin/bash

# Namensnennung
echo ' '
echo ' '
echo ' Firefox Anpassung'
echo ' Hardening + UI Fix'
echo '============================================================'
echo 'Abbruch mit STRG + C'
sleep 5

# root check
if [ $(whoami) == "root" ]
    then
        clear
        echo 'Die Firefox Anpassung funktioniert nicht als root Benutzer.'
        echo 'Bitte das Skript als normaler Nutzer starten.'
        echo ' '
        sleep 5
        exit
fi

clear
echo 'Im Nachfolgenden wird nach einem Firefox Profil gefragt.'
echo 'Markieren Sie mit der Leertaste das Profil mit der Endung .default-esr.'
echo 'Und mit ENTER schliessen Sie den Vorgang ab.'
sleep 7

bash -c "$(curl -fsSL https://raw.githubusercontent.com/black7375/Firefox-UI-Fix/master/install.sh)"
git clone https://github.com/arkenfox/user.js.git -b master arkenfox
cat arkenfox/user.js >> ~/.mozilla/firefox/*.default-esr/user.js
rm -rf arkenfox/

clear
exec firefox-esr
