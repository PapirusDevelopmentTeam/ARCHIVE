#!/usr/bin/env bash
echo "Papirus icon theme for KDE"
! which 7za > /dev/null 2>&1 && { echo "Please install p7zip-full"; exit 1; }
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-icon-theme-kde/archive/master.zip -O /tmp/papirus-icon-theme-kde.zip
echo "Unpack archive ..."
7za x /tmp/papirus-icon-theme-kde.zip -o/tmp/ > /dev/null
echo "Delete old Papirus icon theme ..."
rm -rf ~/.local/share/icons/{papirus,papirus-dark,papirus-arc,papirus-arc-dark}
echo "Installing ..."
mkdir -p ~/.local/share/icons
cp -R /tmp/papirus-icon-theme-kde-master/{papirus,papirus-dark,papirus-arc,papirus-arc-dark} ~/.local/share/icons/
echo "Delete cache ..."
rm -rf ~/.cache/{plasm*,ico*}
rm -rf /tmp/papiru*
echo "Done!"
