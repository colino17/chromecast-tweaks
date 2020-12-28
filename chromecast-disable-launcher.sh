#!/bin/bash

# Disables the stock launcher
# Make sure an alternate launcher is installed before running the script

adb shell pm disable-user --user 0 com.google.android.apps.tv.launcherx
adb shell pm disable-user --user 0 com.google.android.tungsten.setupwraith
