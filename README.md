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

## System Setup Script
- Setup a Chromecast folder with the setup script and a subfolder for Apps, as well as a subfolder that contains pl.plbackup and tvqa.zip
- Note the ADB connection IP address and port now that you've paired your device
- Enter the following command on your computer command line:
  ```bash
  cd /path/to/chromecast/folder
  sh chromecast_system_setup.sh ipaddress:port
  ```

## Reconnect to Network
- After the script is run the Chromecast typically forgets the network connection
- You will need to connect to your WiFi network again at this point

# Additional Setup
- Login to all app accounts and setup app preferences
- Login to Smarttube and restore backup from Google Drive
- Open Tivimate and unlock Premium
- Open CX Files and open the Tivimate backup file

## Setup Script
- Note the ADB connection IP address and port (the port has likely changed since the network reconnect)
- Enter the following command on your computer command line:
  ```bash
  cd /path/to/chromecast/folder
  sh chromecast_launcher_setup.sh ipaddress:port
  ```

# Setup TV Quick Actions
- Settings >> Backup >> Restore Backup
- Confirm ADB is working

# Reboot Device
- Reboot Device and wait a couple minutes

## Setup with Chromecast Orchestra
1. Factory reset the device and go through the guided setup prompts including the remote button setup.
2. Once complete there should be notification in the top right corner prompting you to complete your setup. Go through that flow to dismiss the notification.
3. Under WIFI settings and Privacy choose "Use device MAC", and then setup a static IP or a DHCP reservation for the device on your network. You will likely need to reconnect to your WIFI network after changing the MAC address.
4. Enable Developer Settings in the Android Settings panel, then enable USB and wireless debugging options.
4. Install TVQuickActionsPro from the Play Store. Open it up and grant all the permissions needed. Under ADB Settings choose "Restore ADB Port", and then pair using the Wireless Debugging menu. Then choose "Fix Permissions" and enable "Restore ADB Port on Boot". Enable "Use ADB".
5. Using Chromecast Orchestra run `ccorc sync <target>`. You may need to allow the connection on the target device after the first attempt and then run it a second time.
6. Reconnect to WIFI and choose "Use device MAC" again.
7. Restore TVQuickActionsPro backup file and confirm ADB is working.
6. Login to Jellyshim and Moonfin.
7. Restore Projectivy backup.
8. Open Tivimate and unlock premium then restore backup.
9. Restore Smarttube backup.
