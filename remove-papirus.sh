#/bin/bash
echo "Remove Papirus icon theme for KDE"
sudo rm -rf /usr/share/icons/{papirus,papirus-dark,papirus-arc,papirus-arc-dark}
rm -rf ~/.local/share/icons/{papirus,papirus-dark,papirus-arc,papirus-arc-dark}
echo "Done!"
