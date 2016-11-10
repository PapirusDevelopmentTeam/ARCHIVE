#/bin/bash
echo "Papirus kosole colors for KDE 5"
sleep 5
echo "Create needed folders ..."
mkdir -p ~/.local/share/konsole
echo "Delete old kde4/apps/konsole ..."
rm ~/.local/share/konsole/Papiru*
echo "Download new version from GitHub ..."
wget -c https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-konsole-colorscheme/master/Papirus.colorscheme -O ~/.local/share/konsole/Papirus.colorscheme
wget -c https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-konsole-colorscheme/master/Papirus-Transparent.colorscheme -O ~/.local/share/konsole/Papirus-Transparent.colorscheme
echo "Delete cache ..."
rm install-papirus5.sh
echo "Done!"
