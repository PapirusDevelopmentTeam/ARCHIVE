#/bin/bash
echo "Papirus kosole colors for KDE 4"
sleep 5
echo "Create needed folders ..."
mkdir -p ~/.kde4/apps/konsole
echo "Delete old kde4/apps/konsole ..."
rm ~/.kde4/apps/konsole/Papiru*
echo "Download new version from GitHub ..."
wget -c https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-konsole-colorscheme/master/Papirus.colorscheme -O ~/.kde4/apps/konsole/Papirus.colorscheme
wget -c https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-konsole-colorscheme/master/Papirus-Transparent.colorscheme -O ~/.kde4/apps/konsole/Papirus-Transparent.colorscheme
echo "Delete cache ..."
rm install-papirus4.sh
echo "Done!"
