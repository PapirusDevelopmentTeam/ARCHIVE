#/bin/bash
echo "Papirus color-scheme for KDE 4"
sleep 5
echo "Create needed folders"
mkdir -p ~/.kde4/apps/color-schemes
echo "Delete old Papirus color-scheme ..."
rm -rf ~/.kde4/apps/color-schemes/Papirus.colors
echo "Download new version from GitHub ..."
wget -c https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-color-scheme/master/Papirus.colors -O ~/.kde4/apps/color-schemes/Papirus.colors
echo "Delete cache ..."
rm install-papirus4.sh
echo "Done!"
