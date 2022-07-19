# G3D-RPi-Programs

![G3D-Logo](/documentation/images/g3d_logo.png?raw=true)

### About
This repository contains the rework for the 
programs in Raspberry Pi for G3D T2000 Printer.

### Build using QtCreator
* This is build using Qt 5.12 in QtCreator.
* To build it, you need to download Qt Creator
and Qt 5.12.
* Build directory should be set as ***./build***
and it should be in release mode, refer to the
image below.

![Build-Image](/documentation/images/build.png?raw=true)

### Build using Ubuntu/RPi Terminal
* First, navigate to the build folder of the repository. Example:
* ```cd /home/pi/G3D-RPi-Programs/build``` 
* Then, follow the rest of the command
* ```qmake ../G3D-RPi-Programs.pro``` 
* ```make clean```
* ```make```

### Build for Release in RPi
* Clone this repository to /home/pi by running the following commands:
* ```cd ~```
* ```git clone https://github.com/Global3DSystems/G3D-RPi-Programs.git```
* We need to rename the folder G3D-RPi-Programs to G3D-RPi-Programs-Release-master 
because its what the USB/OTA update and script program expects to start/update
the program. Use the command:
* ```mv G3D-RPi-Programs G3D-RPi-Programs-Release-master```
* Build it using the steps previously in the terminal.
* Delete .cpp and .h files. (To update documentation to create a script to automate the proces of deleting and pushing it to the separate public update repository.)
 
### Development to Release Additional Build Steps

This step should always be done when shifting from development side to testing side in the actual printer with printer serial FW connected.
* Change the USB path and serial port name to RPi compatible values in readwriteconfig.cpp
* Comment the delay in ```PrintThread::run``` at the end of the loop since this is inserted for development purposes.
* Replace ```show()``` by ```showFullScreen()``` in the ```PrintThread``` class for the ```projection_window``` variable.
* Resize the ```projection_window``` variable to (1,1) in ```PrintThread``` class.
* To summarize the step above, perform a Ctrl+Shift+F (search all) for "[DEV-NOTE]" string to find all the lines of code needed  for the steps above for shorcut. Comments are placed throughout the code.
* Uncomment all the serial commands needed. This can be found also by performing a Ctrl+Shift+F (search all) for "[SERIAL COMMAND]" string.
* Test the print in actual printer to see if it is properly configured.
* Test all functionality sequence.
 
### Merge Conflicts
* All ```.user``` and ```.user.random_number``` are
automatically generated, just ignore the merge conflict,
build it and if you are able to run it, you can pull/push
it to the repository.
