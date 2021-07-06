![G3D logo](documentation/images/g3d_logo.png)

# G3D-RPi-Programs-T15000
This is the public respository of the released version of programs 
for G3D T1500 Printer in Raspberry Pi. It is used for updating the
printer via USB update or over the air update.

### How to Update via USB?

* Download this repository by clicking the green "Code" button in the upper left
section of this page then selecting "Download zip".
* Format your flash drive as either FAT or exFAT. We haven't tested yet other file systems.
* Copy the file in the root of the flash drive. 
* Do not rename the filename.It must be exactly "G3D-RPi-Programs-T15000-Release-master.zip". If you downloaded this multiple times,
it may appear as "G3D-RPi-Programs-T15000-Release-master.zip(1)". File name must be exactly "G3D-RPi-Programs-T15000-Release-master.zip" only.
* Insert the flash drive in the printer.
* Restart the printer.
* A prompt will be shown in the touch screen, select it will scan the version and you may choose to update via the latest version or downgrade it.
* Wait for the update finish message to appear. Reboot is required to apply the updates.
* The program will still read the update file if it is not deleted in the flash drive. Delete it to stop prompting the update.

### How to Update via Over the Air?

* The program is prioritizing USB update, if you have a flash drive plugged in, remove it first
so the cloud update will be prioritized.
* Using the touch screen, navigate to Settings->About->Update
* Wait for the update window to show.
* Click "Continue" button to check for updates.
* Make sure you are connected to the internet. Navigate to Settings->Network and 
swtitch to Wi-Fi mode/connect to a network.
* Update will be downloaded if you have an internet connection, else it will stop.
* After the update, a success message will be shown and will ask for reboot.

### My updates failed, what to do?

* If the usb update has been interrupted due to power interruption, 
you can simply update it again by just turning on the printer and the usb plugged in.
* If the over the air download update has been interrupted due to power interruption,
you can simply repeat the process again when printer turns on or update via USB.
* If you cannot download updates due to slow connection, use USB update instead.
Program won't allow downloads when you have less than 100 kbps download speed.
* If download stucks, you probably have slow internet, consider using USB update only.
