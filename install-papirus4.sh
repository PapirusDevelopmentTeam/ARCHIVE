#/bin/bash
echo "Papirus KMail theme for KDE 4"
sleep 5
echo "Create needed folders"
mkdir -p ~/.kde/share/apps/messageviewer/themes
echo "Delete old Papirus KMail theme ..."
rm -rf ~/.kde/share/apps/messageviewer/themes/papirus
echo "Download new version from GitHub ..."
wget -c https://github.com/PapirusDevelopmentTeam/papirus-kmail-theme/archive/master.zip -O /tmp/papirus-kmail-theme.zip
echo "Unpack archive ..."
unzip -oq /tmp/papirus-kmail-theme.zip -d /tmp/
echo "Installing ..."
cp -R /tmp/papirus-kmail-theme-master/papirus ~/.kde/share/apps/messageviewer/themes/
echo "Delete cache ..."
rm -rf /tmp/papiru*
rm install-papirus4.sh
echo "Done!"
