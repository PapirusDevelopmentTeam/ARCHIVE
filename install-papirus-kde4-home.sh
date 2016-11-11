#/bin/bash
echo "Papirus konsole colors for KDE 4"
sleep 5
echo "Create needed folders ..."
mkdir -p ~/.kde/share/apps/konsole
echo "Delete old Papirus konsole colors ..."
rm ~/.kde/share/apps/konsole/{Papirus.colorscheme,Papirus-Transparent.colorscheme}
echo "Download new version from GitHub ..."
wget -c https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-konsole-colorscheme/master/Papirus.colorscheme -O ~/.kde/share/apps/konsole/Papirus.colorscheme
wget -c https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-konsole-colorscheme/master/Papirus-Transparent.colorscheme -O ~/.kde/share/apps/konsole/Papirus-Transparent.colorscheme
echo "Delete cache ..."
echo "Done!"
