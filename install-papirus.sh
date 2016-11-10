#/bin/bash
echo "Papirus icon theme for KDE"
sleep 5
echo "Delete old Papirus icon theme ..."
sudo rm -rf /usr/share/icons/papiru*
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-icon-theme-kde/archive/master.zip -O /tmp/papirus-icon-theme-kde.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-icon-theme-kde.zip -d /tmp/
echo "Installing ..."
sudo cp -R /tmp/papirus-icon-theme-kde-master/papiru* /usr/share/icons/
sudo chmod -R 755 /usr/share/icons/papiru*
echo "Delete cache ..."
rm -rf ~/.cache/{plasm*,ico*}
sudo rm -rf /tmp/papiru*
rm install-papirus.sh
echo "Done!"
