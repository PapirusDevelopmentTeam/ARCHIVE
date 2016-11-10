#/bin/bash
echo "Papirus wallpapers"
sleep 5
echo "Delete old wallpapers ..."
sudo rm -rf /usr/share/wallpapers/Papiru*
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-wallpapers/archive/master.zip -O /tmp/papirus-wallpapers.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-wallpapers.zip -d /tmp/
echo "Installing ..."
sudo cp -R /tmp/papirus-wallpapers-master/Papiru* /usr/share/wallpapers/
sudo chmod -R 755 /usr/share/wallpapers/Papiru*
echo "Delete cache ..."
rm -rf /tmp/papiru*
rm install-papirus.sh
echo "Done!"
