#!/bin/sh

set -e

gh_repo="papirus-icon-theme-kde"
gh_desc="Papirus icon theme for KDE"

cat <<- EOF



      ppppp                         ii
      pp   pp     aaaaa   ppppp          rr  rrr   uu   uu     sssss
      ppppp     aa   aa   pp   pp   ii   rrrr      uu   uu   ssss
      pp        aa   aa   pp   pp   ii   rr        uu   uu      ssss
      pp          aaaaa   ppppp     ii   rr          uuuuu   sssss
                          pp
                          pp


  $gh_desc
  https://github.com/PapirusDevelopmentTeam/$gh_repo


EOF

echo "=> Removing $gh_desc ..."
sudo rm -rf /usr/share/icons/papirus /usr/share/icons/papirus-dark \
  /usr/share/icons/papirus-arc /usr/share/icons/papirus-arc-dark
rm -rf ~/.local/share/icons/papirus ~/.local/share/icons/papirus-dark \
  ~/.local/share/icons/papirus-arc ~/.local/share/icons/papirus-arc-dark
echo "=> Done!"
