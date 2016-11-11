#/bin/bash
echo "Papirus color-scheme for KDE 4"
sleep 5
echo "Create needed folders"
mkdir -p ~/.kde/share/apps/color-schemes
echo "Delete old Papirus color-scheme ..."
rm -rf ~/.kde/share/apps/color-schemes/Papirus.colors
echo "Download new version from GitHub ..."
wget -c https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-color-scheme/master/Papirus.colors -O ~/.kde/share/apps/color-schemes/Papirus.colors
echo "Done!"
