# Chromecast Tweaks

Various tweaks, scripts, and tricks for the 2020 Chromecast.

## Developer Options

- Enable Developer Options
- Turn on ADB debugging
- Allow installing from unknown sources

## Button Mapping

#### Settings
- adb shell pm grant flar2.homebutton android.permission.WRITE_SECURE_SETTINGS
- Troubleshooting > Alternate Button Handlng

#### Youtube Button
- Single Press = Play/Pause
- Long Press = Stop

#### Netflix Button
- Single Press = Keycode 82 (Menu)
- Long Press = System Settings

## Apps to Install (Store)

- Disney Plus
- Youtube
- Netflix
- Prime Video
- Tivimate
- Kodi
- Button Mapper

## Apps to Install (Sideload)

- KodiLauncher
- Settings

## KODI Addons to Install

- GRID Skin (Custom)
- JellyFin

## KODI Sources to Add

- Jellyfin (https://kodi.jellyfin.org)
- Recordings

## KODI Menu Structure

| **Shows (All Shows)** | **Movies (All Movies** | **Sports (Jellyfin Sports)** | **Live TV (Tivimate)** | **YouTube (YouTube App)** | **On Demand** | **Settings (Kodi Settings)** |
|:-----------------:|:------------------:|:------------------------:|:------------------:|:---------------------:|:---------------------:|:------------------------:|
|       Dramas      |                    |         NHL Live (JF)    |     Recordings     |                       |        Netflix        |        TV Settings       |
|      Comedies     |                    |                          |                    |                       |      Prime Video      |           Files          |
|      Cartoons     |                    |                          |                    |                       |      Disney Plus      |           Apps           |
|      Holidays     |                    |                          |                    |                       |                       |           Exit           |

## KODI Settings

- Settings Level
-- Expert
