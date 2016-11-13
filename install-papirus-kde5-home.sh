#!/usr/bin/env bash
echo "Papirus Yakuake theme for KDE 5"
sleep 5
echo "Create needed folders"
mkdir -p ~/.local/share/yakuake/kns_skins
echo "Delete old Papirus Yakuake theme ..."
rm -rf ~/.local/share/yakuake/kns_skins/papirus
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-yakuake-theme/archive/master.zip -O /tmp/papirus-yakuake-theme.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-yakuake-theme.zip -d /tmp/
echo "Installing ..."
cp -R /tmp/papirus-yakuake-theme-master/papirus ~/.local/share/yakuake/kns_skins/
echo "Delete cache ..."
rm -rf /tmp/papiru*
echo "Done!"
