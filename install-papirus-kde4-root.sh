#!/usr/bin/env bash
echo "Papirus K3B theme for KDE 4"
sleep 5
echo "Delete old Papirus Plasma theme ..."
sudo rm -rf /usr/share/apps/k3b/pics/Papirus
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-k3b-theme/archive/master.zip -O /tmp/papirus-k3b-theme.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-k3b-theme.zip -d /tmp/
echo "Installing ..."
sudo cp -R /tmp/papirus-k3b-theme-master/Papirus /usr/share/apps/k3b/pics/
sudo chmod -R 755 /usr/share/apps/k3b/pics/Papirus
echo "Delete cache ..."
rm -rf /tmp/papiru*
echo "Done!"
