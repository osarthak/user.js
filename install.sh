#!/bin/sh

pkill firefox
rm -rf $HOME/.mozilla/firefox/*.default-release/*
cp firefox/* $HOME/.mozilla/firefox/*.default-release
echo "removing /usr/lib64/firefox/browser/features/*"
sudo rm -I /usr/lib64/firefox/browser/features/*

ublock_version="1.46.0"
wget -O uBlock0_$ublock_version.firefox.signed.xpi https://github.com/gorhill/uBlock/releases/download/$ublock_version/uBlock0_$ublock_version.firefox.signed.xpi
setsid -f firefox uBlock0_$ublock_version.firefox.signed.xpi
