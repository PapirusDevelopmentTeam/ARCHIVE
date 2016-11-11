#/bin/bash
echo "Papirus bomi skin"
sleep 5
echo "Delete old Papirus bomi skin ..."
sudo rm -rf /usr/share/bomi/skins/Papirus
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-bomi-skin/archive/master.zip -O /tmp/papirus-bomi-skin.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-bomi-skin.zip -d /tmp/
echo "Installing ..."
sudo cp -R /tmp/papirus-bomi-skin-master/Papirus /usr/share/bomi/skins/
sudo chmod -R 755 /usr/share/bomi/skins/Papirus
echo "Delete cache ..."
rm -rf /tmp/papiru*
echo "Done!"
