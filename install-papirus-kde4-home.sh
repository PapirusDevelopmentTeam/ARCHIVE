#/bin/bash
echo "Papirus Yakuake theme for KDE 4"
sleep 5
echo "Create needed folders"
mkdir -p ~/.kde/share/apps/yakuake/skins
echo "Delete old Papirus Yakuake theme ..."
rm -rf ~/.kde/share/apps/yakuake/skins/papirus
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-yakuake-theme/archive/master.zip -O /tmp/papirus-yakuake-theme.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-yakuake-theme.zip -d /tmp/
echo "Installing ..."
cp -R /tmp/papirus-yakuake-theme-master/papirus ~/.kde/share/apps/yakuake/skins/
echo "Delete cache ..."
rm -rf /tmp/papiru*
echo "Done!"
