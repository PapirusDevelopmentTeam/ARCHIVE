#/bin/bash
echo "Papirus Plasma theme for KDE 5"
sleep 5
echo "Create needed folders"
mkdir -p ~/.local/share/plasma/desktoptheme
echo "Delete old Papirus Plasma theme ..."
rm -rf ~/.local/share/plasma/desktoptheme/papirus
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-plasma-theme/archive/master.zip -O /tmp/papirus-plasma-theme.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-plasma-theme.zip -d /tmp/
echo "Installing ..."
cp -R /tmp/papirus-plasma-theme-master/papirus ~/.local/share/plasma/desktoptheme/
echo "Delete cache ..."
rm -rf ~/.cache/{plasm*,ico*}
rm -rf /tmp/papiru*
rm install-papirus5.sh
echo "Done!"
