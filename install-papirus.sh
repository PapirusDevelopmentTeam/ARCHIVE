#/bin/bash
echo "Papirus Kvantum theme"
sleep 5
echo "Create needed folders"
mkdir -p ~/.config/Kvantum
echo "Delete old Papirus Kvantum theme ..."
rm -rf ~/.config/Kvantum/Papirus
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-kvantum-theme/archive/master.zip -O /tmp/papirus-kvantum-theme.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-kvantum-theme.zip -d /tmp/
echo "Installing ..."
cp -R /tmp/papirus-kvantum-theme-master/Papirus ~/.config/Kvantum/
echo "Delete cache ..."
rm -rf /tmp/papiru*
rm install-papirus.sh
echo "Done!"
