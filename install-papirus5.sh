#/bin/bash
echo "Papirus KMail theme for KDE 5"
sleep 5
echo "Create needed folders"
mkdir -p ~/.local/share/messageviewer/theme
echo "Delete old Papirus KMail theme ..."
rm -rf ~/.local/share/messageviewer/theme/papirus
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-kmail-theme/archive/master.zip -O /tmp/papirus-kmail-theme.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-kmail-theme.zip -d /tmp/
echo "Installing ..."
cp -R /tmp/papirus-kmail-theme-master/papirus ~/.local/share/messageviewer/theme/
echo "Delete cache ..."
rm -rf /tmp/papiru*
echo "Done!"
