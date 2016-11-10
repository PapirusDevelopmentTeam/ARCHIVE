#/bin/bash
echo "Papirus Aurorae Plasma theme for KDE 5"
sleep 5
echo "Create needed folders"
mkdir -p ~/.local/share/aurorae/themes
echo "Delete old Papirus Plasma theme ..."
rm -rf ~/.local/share/aurorae/themes/Papiru*
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-aurorae-theme/archive/master.zip -O /tmp/papirus-aurorae-theme.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-aurorae-theme.zip -d /tmp/
echo "Installing ..."
cp -R /tmp/papirus-aurorae-theme-master/Papiru* ~/.local/share/aurorae/themes/
echo "Delete cache ..."
rm -rf ~/.cache/{plasm*,ico*}
rm -rf /tmp/papiru*
rm install-papirus5.sh
echo "Done!"
