#!/bin/bash

read -n 1 -s -p "Welcome to my website downloader script. Please press any key to continue"
echo
read -p "Enter the complete url of the website you want to download : " siteURL
read -p "Enter the download location (eg /tmp/w3schools)" downloadLocation
read -p "What is the name of the site you are trying to download (eg w3schools.com) : " siteName
echo "Running httrack... Downloading $siteURL to $downloadLocation"
httrack "$siteURL" -O "$downloadLocation" "+*.$siteName/*" -v

#bash command
#httrack "http:www.w3schools.com/" -O "/tmp/w3schools" "+*.w3schools.com/*" -v
