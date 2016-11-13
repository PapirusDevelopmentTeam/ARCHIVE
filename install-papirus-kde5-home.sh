#!/usr/bin/env bash
echo "Papirus color-scheme for KDE 5"
sleep 5
echo "Create needed folders"
mkdir -p ~/.local/share/color-schemes
echo "Delete old Papirus color-scheme ..."
rm -rf ~/.local/share/color-schemes/Papirus.colors
echo "Download new version from GitHub ..."
wget -c https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-color-scheme/master/Papirus.colors -O ~/.local/share/color-schemes/Papirus.colors
echo "Done!"
