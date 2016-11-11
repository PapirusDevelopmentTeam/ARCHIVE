#/bin/bash
echo "Papirus wallpapers"
sleep 5
echo "Delete old wallpapers ..."
rm -rf ~/.local/share/wallpapers/Papiru*
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-wallpapers/archive/master.zip -O /tmp/papirus-wallpapers.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-wallpapers.zip -d /tmp/
echo "Installing ..."
cp -R /tmp/papirus-wallpapers-master/Papiru* ~/.local/share/wallpapers/
echo "Delete cache ..."
rm -rf /tmp/papiru*
echo "Done!"
