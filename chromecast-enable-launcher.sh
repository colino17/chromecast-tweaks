#!/bin/bash

# Disables the stock launcher
# Make sure an alternate launcher is installed before running the script

adb shell pm enable com.google.android.apps.tv.launcherx
adb shell pm enable com.google.android.tungsten.setupwraith
