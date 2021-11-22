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

#

### How to Update via Over the Air?

* G3D T1500 Printer has no touch screen. There is no interface for cloud update so it is not supported.
#

### My updates failed, what to do?

* If the usb update has been interrupted due to power interruption, 
you can simply update it again by just turning on the printer and the usb plugged in.
