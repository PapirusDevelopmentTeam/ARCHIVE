#/bin/bash
echo "Papirus Look and Feel for KDE 5"
sleep 5
echo "Create needed folders"
mkdir -p ~/.local/share/plasma/look-and-feel
echo "Delete old Look and Feel theme ..."
rm -rf ~/.local/share/plasma/look-and-feel/com.github.varlesh.papirus
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-look-and-feel/archive/master.zip -O /tmp/papirus-look-and-feel.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-look-and-feel.zip -d /tmp/
echo "Installing ..."
cp -R /tmp/papirus-look-and-feel-master/com.github.varlesh.papirus ~/.local/share/plasma/look-and-feel/
echo "Delete cache ..."
rm -rf ~/.cache/{plasm*,ico*}
rm -rf /tmp/papiru*
rm install-papirus.sh
echo "Done!"
