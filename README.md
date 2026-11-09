# Chromecast Tweaks

Scripts for setting up Chromecast devices as well as instructions for setting up devices using [Chromecast Orchestra](https://github.com/colino17/chromecast-orchestra-docker).

## Setup using Scripts
1. Factory reset the device and go through the guided setup prompts including the remote button setup.
2. Once complete there should be notification in the top right corner prompting you to complete your setup. Go through that flow to dismiss the notification.
3. Under WIFI settings and Privacy choose "Use device MAC", and then setup a static IP or a DHCP reservation for the device on your network. You will likely need to reconnect to your WIFI network after changing the MAC address.
4. Enable Developer Settings in the Android Settings panel, then enable USB and wireless debugging options.
5. Choose pair under the wireless debugging options and then pair the device with a computer using the `adb pair ipaddress:port` command.
6. Setup a Chromecast folder with the setup script and a subfolder for Apps, as well as a subfolder that contains pl.plbackup and tvqa.zip and navigate to that folder using the `cd /path/to/chromecast/folder` command.
7. Run the `sh chromecast_system_setup.sh ipaddress:port` command from the chromecast folder.
8. Reconnect to WIFI and choose "Use device MAC" again.
9. Login to Jellyshim and Moonfin.
10. Open Tivimate and unlock premium then restore backup.
11. Restore Smarttube backup.
12. Run the `sh chromecast_launcher_setup.sh ipaddress:port` command from the chromecast folder.
13. Restore TVQuickActionsPro backup file and confirm ADB is working.

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
