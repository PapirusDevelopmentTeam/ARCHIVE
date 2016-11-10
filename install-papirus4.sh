#/bin/bash
echo "Papirus Plasma theme for KDE 4"
sleep 5
echo "Create needed folders"
mkdir -p ~/.kde4/apps/desktoptheme
echo "Delete old Papirus Plasma theme ..."
rm -rf ~/.kde4/apps/desktoptheme/papirus
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-plasma-theme/archive/master.zip -O /tmp/papirus-plasma-theme.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-plasma-theme.zip -d /tmp/
echo "Installing ..."
cp -R /tmp/papirus-plasma-theme-master/papirus ~/.kde4/apps/desktoptheme/
echo "Delete cache ..."
rm -rf /tmp/papiru*
rm install-papirus4.sh
echo "Done!"
