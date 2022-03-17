#!/bin/bash

grep -qxF 'deb https://www.atebitsy.com/repo/ ./' /var/mobile/Library/Caches/com.saurik.Cydia/sources.list || echo 'deb https://www.atebitsy.com/repo/ ./' >> /var/mobile/Library/Caches/com.saurik.Cydia/sources.list
grep -qxF 'deb https://poomsmart.github.io/repo/ ./' /var/mobile/Library/Caches/com.saurik.Cydia/sources.list || echo 'deb https://poomsmart.github.io/repo/ ./' >> /var/mobile/Library/Caches/com.saurik.Cydia/sources.list
grep -qxF 'deb https://repo.packix.com/ ./' /var/mobile/Library/Caches/com.saurik.Cydia/sources.list || echo 'deb https://repo.packix.com/ ./' >> /var/mobile/Library/Caches/com.saurik.Cydia/sources.list

apt update
apt install -y python3 screen curl wget vim sqlite3 rsync com.tigisoftware.appdatamanager com.tigisoftware.filza ws.hbang.newterm2
apt install -y --allow-unauthenticated com.google.ios.ytadblock com.ps.ytautofullscreen jp.soh.reprovision
python3 -m ensurepip --upgrade
pip3 install requests

killall SpringBoard
