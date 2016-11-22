#!/usr/bin/env bash
echo "Papirus icon theme for KDE"
! which 7za > /dev/null 2>&1 && { echo "Please install p7zip"; exit 1; }
echo "Delete old Papirus icon theme ..."
sudo rm -rf /usr/share/icons/{papirus,papirus-dark,papirus-arc,papirus-arc-dark}
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-icon-theme-kde/archive/master.zip \
    -O /tmp/papirus-icon-theme-kde.zip
echo "Unpack archive ..."
7za x /tmp/papirus-icon-theme-kde.zip -o/tmp/
echo "Installing ..."
sudo cp -R /tmp/papirus-icon-theme-kde-master/{papirus,papirus-dark,papirus-arc,papirus-arc-dark} /usr/share/icons/
sudo chmod -R 755 /usr/share/icons/{papirus,papirus-dark,papirus-arc,papirus-arc-dark}
echo "Delete cache ..."
rm -rf ~/.cache/{plasm*,ico*}
rm -rf /tmp/papiru*
echo "Done!"
