#!/usr/bin/env bash
echo "Papirus VLC skin"
sleep 5
echo "Delete old skin ..."
rm ~/.local/share/vlc/skins2/Papirus.vlt
echo "Create needed folders"
mkdir -p ~/.local/share/vlc/skins2
echo "Download new version from GitHub ..."
wget -c https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-vlc-theme/master/Papirus.vlt -O ~/.local/share/vlc/skins2/Papirus.vlt
echo "Done!"
