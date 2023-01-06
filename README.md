# Chromecast Tweaks

Various tweaks, scripts, and tricks for the Chromecast with Google TV.

## Developer Options

- Enable Developer Options
- Turn on ADB debugging
- Allow installing from unknown sources

## Button Mapping
Install tvQuickActions and LeanKey Keyboard from Play Store

#### Settings
- System > Accessibility > tvQuickActions > Enable
- Apps > Special App Access > Display Over Other Apps > tvQuickActions > Enable
- System > Keyboard > Manage keyboards > LeanKey Keyboard > Enable
- System > Keyboard > Current Keyboard > LeanKey Keyboard
- Grant permissions via ADB:
```
adb connect ipaddress
adb devices
adb shell pm grant dev.vodik7.tvquickactions android.permission.WRITE_SECURE_SETTINGS
```

#### Youtube Button
- Single Press = Play/Pause
- Long Press = Stop

#### Netflix Button
- Single Press = Menu Key
- Long Press = System Settings

## Apps to Install (Store)

- Disney Plus
- Netflix
- Prime Video
- tvQuickActions
- LeanKey Keyboard
- Sportsnet
- Surfshark

## Apps to Install (Sideload)

- Kodi(Custom Build)
- Smart Tube Next

## KODI Setup
- Install custom build of Kodi (designed to work as a launcher)
```
adb install Kodi.apk
```
- Push backup settings to new device
```
adb push .kodi/. /sdcard/Android/data/org.xbmc.kodi/files/.kodi
```
- Disable default launcher
```
adb shell pm disable-user --user 0 com.google.android.apps.tv.launcherx
adb shell pm disable-user --user 0 com.google.android.tungsten.setupwraith
```

#### KODI Settings

- Settings Level
  - Expert
- Media
  - General
    - Show Parent Items = DISABLED
    - Show Add Source = DISABLED
  - Videos
    - Show "All Items" entry = DISABLED
    - Show Movie Sets = ENABLED
    - Select First Unwatched Season/Episode = 
- Interface
  - Skin
    - Skin = TrueGrid
    - Show RSS = DISABLED
  - Regional
    - Language = ENGLISH 
- Player
  - Language
    - Preferred Audio = ENGLISH
    - Preferred Subtitle = NONE
- Services
  - General
    - Device Name = NAME
- System
  - Add-Ons
    - Updates = AUTOMATIC
    - Notifications = ENABLED
    - Unknown Sources = ENABLED
