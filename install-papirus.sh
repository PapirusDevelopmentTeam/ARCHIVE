#/bin/bash
echo "Papirus SDDM theme"
sleep 5
echo "Delete old SDDM theme ..."
sudo rm -rf /usr/share/sddm/themes/papirus
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-sddm-theme/archive/master.zip -O /tmp/papirus-sddm-theme.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-sddm-theme.zip -d /tmp/
echo "Installing ..."
sudo cp -R /tmp/papirus-sddm-theme-master/papirus /usr/share/sddm/themes/
sudo chmod -R 755 /usr/share/sddm/themes/papirus
echo "Delete cache ..."
rm -rf /tmp/papiru*
echo "Done!"
