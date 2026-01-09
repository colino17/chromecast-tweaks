# Chromecast Tweaks

## Initial Setup

- Factory reset the device if needed and follow the guided setup process including setting up any remote control settings.

## Activate ADB and Pair Device

- Settings >> System >> About >> Android TV OS Build (press seven times)
- Settings >> System >> Developer Options >> USB Debugging >> Enable
- Settings >> System >> Developer Options >> Wireless Debugging >> Enable
- Settings >> System >> Developer Options >> Wireless Debugging >> Pair with Device Code
- Enter the following command on your computer command line:
  ```bash
  adb pair ipaddress:port
  ```
- Enter the pairing code

## Setup Script
- Setup a Chromecast folder with the setup script and a subfolder for Apps, as well as a subfolder that contains pl.plbackup and tvqa.zip
- Note the ADB connection IP address and port now that you've paired your device
- Enter the following command on your computer command line:
  ```bash
  cd /path/to/chromecast/folder
  sh chromecast_setup.sh ipaddress:port
  ```
- At this point you will likely need to recommect to WIFI

# Additional Setup
- Setup VPN for Sportsnet to autostart at correct location
- Login to all app accounts and setup app preferences
- Login to Smarttube and restore backup from Google Drive

# Setup ADB Auto Enable
- Settings >> System >> Developer Options >> Wireless Debugging >> Enable
- Settings >> System >> Developer Options >> Wireless Debugging >> Pair with Device Code
- Go to "http://ipaddress:9093" in a web browser
- Enter the pairing code and pairing port into the web interface and click "Pair Device"
- Click "Switch to Port 5555 Now"
- Reboot Device and wait a couple minutes

# Setup TV Quick Actions
- Settings >> Backup >> Restore Backup

# Reboot Device
- Reboot Device and wait a couple minutes
