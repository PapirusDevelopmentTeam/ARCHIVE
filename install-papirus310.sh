#/bin/bash
echo "Papirus GTK theme for KDE"
sleep 5
echo "Delete old GTK theme ..."
sudo rm -rf /usr/share/themes/papirus310
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-gtk-theme/archive/master.zip -O /tmp/papirus-gtk-theme.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-gtk-theme.zip -d /tmp/
echo "Installing ..."
sudo cp -R /tmp/papirus-gtk-theme-master/papirus310 /usr/share/themes/
sudo chmod -R 755 /usr/share/themes/papirus310
echo "Delete cache ..."
rm -rf /tmp/papiru*
rm install-papirus310.sh
echo "Done!"
