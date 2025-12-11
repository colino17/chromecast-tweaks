#!/bin/bash

# Usage = sh chromecast_setup.sh ipaddress

# Connect to Device
adb connect $1:5555

# Grant Permissions
adb shell pm grant dev.vodik7.tvquickactions android.permission.WRITE_SECURE_SETTINGS
adb shell settings put secure enabled_accessibility_services com.spocky.projengmenu/com.spocky.projengmenu.services.ProjectivyAccessibilityService:dev.vodik7.tvquickactions/.KeyAccessibilityService

# Sideload Applications
adb install icons.apk
adb install dune.apk
adb install st.apk

# Transfer Settings Files
adb push Settings /storage/emulated/0/Documents/

# Restore Backup
adb shell am start -n com.cxinventor.file.explorer/com.alphainventor.filemanager.activity.MainActivity -a android.intent.action.VIEW -d file:///storage/emulated/0/Documents/pl.plbackup
