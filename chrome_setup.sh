#!/bin/bash

# Usage = sh chromecast_setup.sh ipaddress

# Connect to Device
adb connect $1:5555

# Grant Permissions
adb shell appops set dev.vodik7.tvquickactions GET_USAGE_STATS allow
adb shell pm grant dev.vodik7.tvquickactions android.permission.WRITE_SECURE_SETTINGS
adb shell appops set dev.vodik7.tvquickactions SYSTEM_ALERT_WINDOW allow
adb shell appops set com.cxinventor.file.explorer MANAGE_EXTERNAL_STORAGE allow
adb shell settings put secure enabled_accessibility_services com.spocky.projengmenu/com.spocky.projengmenu.services.ProjectivyAccessibilityService:dev.vodik7.tvquickactions/.KeyAccessibilityService
adb shell settings put secure enabled_notification_listeners com.google.android.apps.tv.launcherx/com.google.android.apps.tv.launcherx.coreservices.notificationlistener.TvNotificationListenerService:com.spocky.projengmenu/com.spocky.projengmenu.services.notification.NotificationListener

# Sideload Applications
adb install Apps/icons.apk
adb install Apps/dune.apk
adb install Apps/st.apk

# Transfer Settings Files
adb push Settings/* /storage/emulated/0/Documents/

# Restore Backup
adb shell am start -n com.cxinventor.file.explorer/com.alphainventor.filemanager.activity.MainActivity -a android.intent.action.VIEW -d file:///storage/emulated/0/Documents/pl.plbackup

# Disable Default Launcher
adb shell pm disable-user --user 0 com.google.android.apps.tv.launcherx
adb shell pm disable-user --user 0 com.google.android.tungsten.setupwraith

# Disable Packages
adb shell pm disable-user --user 0 com.google.android.play.games
adb shell pm disable-user --user 0 com.google.android.videos
adb shell pm disable-user --user 0 com.android.printspooler
adb shell pm disable-user --user 0 com.google.android.partnersetup
adb shell pm disable-user --user 0 com.google.android.gms.feedback
adb shell pm disable-user --user 0 com.android.tv.feedbackconsent
adb shell pm disable-user --user 0 com.android.providers.calendar
adb shell pm disable-user --user 0 com.google.android.syncadapters.calendar
adb shell pm disable-user --user 0 com.google.android.marvin.talkback
