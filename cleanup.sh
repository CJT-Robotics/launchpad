#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

if [[ $EUID -ne 0 ]]; then
   echo -e "${RED}Root privileges are required${NC}"
   exit 1
fi

apt-get purge -y gnome-mines gnome-sudoku gnome-mahjongg aisleriot libreoffice* \
                 thunderbird transmission-common rhythmbox shotwell cheese \
                 gnome-todo example-content firefox 2>/dev/null

snap remove firefox 2>/dev/null
apt-get autoremove -y > /dev/null

apt-get update > /dev/null
apt-get install -y wget gdebi-core libu2f-udev > /dev/null
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome.deb -q

if gdebi -n /tmp/google-chrome.deb; then
    echo -e "${GREEN}Google Chrome installiert.${NC}"
else
    echo -e "${RED}Fehler bei Chrome Installation!${NC}"
fi

rm /tmp/google-chrome.deb

echo -e "${GREEN}Done!${NC}"
