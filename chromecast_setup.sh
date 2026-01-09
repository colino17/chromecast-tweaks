#!/bin/bash

# Usage = sh chromecast_setup.sh ipaddress:port

# Download Packages
echo "Downloading updated APKs.."
sleep 3
curl -s https://api.github.com/repos/Sam42a/DUNE/releases/latest | grep "browser_download_url.*.apk" | cut -d : -f 2,3 | tr -d \" | wget -O Apps/dune.apk -qi -
curl -s https://api.github.com/repos/yuliskov/SmartTube/releases/latest | grep "browser_download_url.*v7a.apk" | cut -d : -f 2,3 | tr -d \" | wget -O Apps/st.apk -qi -
sleep 3

# Connect to Device
echo "Connecting to device..."
sleep 3
adb connect $1
sleep 3
adb connect $1
sleep 3

# Install Play Store Apps
echo "Installing Play Store applications..."
sleep 3
adb shell am start -a android.intent.action.VIEW -d 'market://details?id=dev.vodik7.tvquickactions'
sleep 3
adb shell input keyevent 23
sleep 10
adb shell am start -a android.intent.action.VIEW -d 'market://details?id=com.spocky.projengmenu'
sleep 3
adb shell input keyevent 23
sleep 10
adb shell am start -a android.intent.action.VIEW -d 'market://details?id=com.cxinventor.file.explorer'
sleep 3
adb shell input keyevent 23
sleep 10
adb shell am start -a android.intent.action.VIEW -d 'market://details?id=se.hedekonsult.sparkle'
sleep 3
adb shell input keyevent 23
sleep 10
adb shell am start -a android.intent.action.VIEW -d 'market://details?id=com.netflix.ninja'
sleep 3
adb shell input keyevent 23
sleep 10
adb shell am start -a android.intent.action.VIEW -d 'market://details?id=com.amazon.amazonvideo.livingroom'
sleep 3
adb shell input keyevent 23
sleep 10
adb shell am start -a android.intent.action.VIEW -d 'market://details?id=com.rogers.sportsnet.sportsnet'
sleep 3
adb shell input keyevent 23
sleep 10
adb shell am start -a android.intent.action.VIEW -d 'market://details?id=com.tubitv'
sleep 3
adb shell input keyevent 23
sleep 10
adb shell am start -a android.intent.action.VIEW -d 'market://details?id=ca.cbc.android.cbctv'
sleep 3
adb shell input keyevent 23
sleep 10
adb shell am start -a android.intent.action.VIEW -d 'market://details?id=com.disney.disneyplus'
sleep 3
adb shell input keyevent 23
sleep 10
adb shell am start -a android.intent.action.VIEW -d 'market://details?id=com.surfshark.vpnclient.android'
sleep 3
adb shell input keyevent 23
echo "Setup will continue in 5 minutes..."
sleep 1m
echo "Setup will continue in 4 minutes..."
sleep 1m
echo "Setup will continue in 3 minutes..."
sleep 1m
echo "Setup will continue in 2 minutes..."
sleep 1m
echo "Setup will continue in 1 minutes..."
sleep 1m

# Sideload Applications
echo "Installing additional applications..."
sleep 3
adb install Apps/autoadb.apk
adb install Apps/icons.apk
adb install Apps/dune.apk
adb install Apps/st.apk
sleep 3

# Grant Permissions
echo "Granting app permissions..."
sleep 3
adb shell appops set dev.vodik7.tvquickactions GET_USAGE_STATS allow
adb shell appops set dev.vodik7.tvquickactions SYSTEM_ALERT_WINDOW allow
adb shell appops set com.cxinventor.file.explorer MANAGE_EXTERNAL_STORAGE allow
adb shell pm grant dev.vodik7.tvquickactions android.permission.WRITE_SECURE_SETTINGS
adb shell pm grant com.tpn.adbautoenable android.permission.WRITE_SECURE_SETTINGS
adb shell settings put secure enabled_accessibility_services com.spocky.projengmenu/com.spocky.projengmenu.services.ProjectivyAccessibilityService:dev.vodik7.tvquickactions/.KeyAccessibilityService
adb shell settings put secure enabled_notification_listeners com.google.android.apps.tv.launcherx/com.google.android.apps.tv.launcherx.coreservices.notificationlistener.TvNotificationListenerService:com.spocky.projengmenu/com.spocky.projengmenu.services.notification.NotificationListener
sleep 3

# Transfer Settings Files
echo "Transferring settings files..."
sleep 3
adb push Settings/* /storage/emulated/0/Documents/
sleep 3

# Restore Projectivy Settings
echo "Restoring launcher settings..."
sleep 3
adb shell am start -n com.cxinventor.file.explorer/com.alphainventor.filemanager.activity.MainActivity -a android.intent.action.VIEW -d file:///storage/emulated/0/Documents/pl.plbackup
sleep 3

# Disable Packages
echo "Disabling extra packages..."
sleep 3
adb shell pm disable-user --user 0 com.google.android.play.games
adb shell pm disable-user --user 0 com.google.android.videos
adb shell pm disable-user --user 0 com.android.printspooler
adb shell pm disable-user --user 0 com.google.android.partnersetup
adb shell pm disable-user --user 0 com.google.android.gms.feedback
adb shell pm disable-user --user 0 com.android.tv.feedbackconsent
adb shell pm disable-user --user 0 com.android.providers.calendar
adb shell pm disable-user --user 0 com.google.android.syncadapters.calendar
adb shell pm disable-user --user 0 com.google.android.marvin.talkback
sleep 3

# Disable Default Launcher
echo "Disabling default launcher..."
sleep 3
adb shell pm disable-user --user 0 com.google.android.apps.tv.launcherx
adb shell pm disable-user --user 0 com.google.android.tungsten.setupwraith
sleep 3
