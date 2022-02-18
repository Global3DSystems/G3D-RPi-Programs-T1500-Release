![G3D logo](documentation/images/g3d_logo.png)

# G3D-RPi-Programs-T1500
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
* The printer must be initially turned off.
* Insert the flash drive then turn on the printer.
* The printer will make 2 beep sounds when it detected the update file then it will start updating.
* When the update is successful, the printer will also make 2 beep sounds then automatically shutdowns.
* Remove the flash drive and turn on the printer again to use the updated software. Delete the update file in the flash drive so it won't be read again by the printer when you use it.
* The printer will make one long beep every time the program starts which means you can connect to it now via hotspot or your local network.

#

### How to Update via Over the Air?

* G3D T1500 Printer has no touch screen. There is no interface for cloud update so it is not supported.
#

### My updates failed, what to do?

* If the usb update has been interrupted due to power interruption, 
you can simply update it again by just turning on the printer and the usb plugged in.
