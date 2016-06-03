#!/usr/bin/env bash

cleanup() {
    find * -type f -name .gitignore -delete
    find * -type f -name .directory -delete
    find * -type f -name *.pkg.tar.xz -delete
    find * -type f -name .AURINFO -delete
    find * -type f -name .SRCINFO -delete
    find * -type d -name src -exec rm -rf {} +
    find * -type d -name pkg -exec rm -rf {} +
    find * -type d -name .git -exec rm -rf {} +
    find * -type f -exec chmod 644 {} +
    find * -type d -exec chmod 755 {} +
}

cd git/
cleanup
cd ../stable/
cleanup
