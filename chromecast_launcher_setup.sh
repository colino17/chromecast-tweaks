#!/bin/bash

# Usage = sh chromecast_setup.sh ipaddress:port

# Connect to Device
echo "Connecting to device..."
sleep 3
adb connect $1
sleep 3
adb connect $1
sleep 3

# Restore Projectivy Settings
while true; do
    read -p "Have you logged in to Jellyfin? (Yes or Y to continue): " response
    if [[ $response =~ ^[Yy]$ ]]; then
        echo "Continuing setup..."
        sleep 3
        break
    else
        echo "Please login and respond with 'yes' or 'y' to continue."
    fi
done
echo "Restoring launcher settings..."
sleep 3
adb shell am start -n com.cxinventor.file.explorer/com.alphainventor.filemanager.activity.MainActivity -a android.intent.action.VIEW -d file:///storage/emulated/0/Documents/pl.plbackup
sleep 2m
