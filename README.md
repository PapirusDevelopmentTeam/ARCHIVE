<p align="center">
  <img src="https://github.com/PapirusDevelopmentTeam/papirus-kvantum-theme/raw/master/preview.png" alt="preview"/>
</p>

# Install
**For Archlinux, Manjaro, Netrunner Rolling, Antergos (AUR)**:
```
yaourt -S papirus-kvantum-theme
```
**For Kubuntu 16.04/KDE Neon**:
```
# Kvantum engine (ONLY FOR AMD64!!!)
wget https://github.com/tsujan/Kvantum/releases/download/V0.10.0/kvantum_0.10.0-ubuntuLTS_amd64.deb
sudo dpkg -i kvantum*.deb
sudo apt install -f
# Kvantum Papirus Theme
git clone https://github.com/PapirusDevelopmentTeam/papirus-kvantum-theme.git
cp -R papirus-kvantum-theme/Papirus ~/.config/Kvantum/
```
**NOTE**: You can install Kvantum engine and theme on KDE4-distros (Debian, Kubuntu 14.04, Linux Mint 17 KDE and etc..), but i'm NOT tested!
