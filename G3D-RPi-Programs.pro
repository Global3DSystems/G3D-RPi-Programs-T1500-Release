QT       += core gui serialport
QT       += network
include(QtWebApp/QtWebApp/httpserver/httpserver.pri)
include(QtWebApp/QtWebApp/templateengine/templateengine.pri)
OTHER_FILES += etc/webapp1.ini

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    controlpagecontroller.cpp \
    filepagecontroller.cpp \
    global.cpp \
    main.cpp \
    mainwindow.cpp \
    networkconfiguration.cpp \
    printerserial.cpp \
    printinfocontroller.cpp \
    printinfoslice.cpp \
    printingcontroller.cpp \
    printpagecontroller.cpp \
    projectionwindow.cpp \
    readwriteconfig.cpp \
    requestmapper.cpp \
    settingspagecontroller.cpp \
    usb.cpp \
    colortheme.cpp

HEADERS += \
    controlpagecontroller.h \
    filepagecontroller.h \
    global.h \
    mainwindow.h \
    networkconfiguration.h \
    printerserial.h \
    printinfocontroller.h \
    printinfoslice.h \
    printingcontroller.h \
    printpagecontroller.h \
    projectionwindow.h \
    readwriteconfig.h \
    requestmapper.h \
    settingspagecontroller.h \
    usb.h \
    colortheme.h

FORMS += \
    mainwindow.ui \
    projectionwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    Resources.qrc

DISTFILES += \
    build/resources/images/Back Button/back button-blue.png \
    build/resources/images/Back Button/back button-blue.png \
    build/resources/images/Back Button/back button-gray.png \
    build/resources/images/Back Button/back button-gray.png \
    build/resources/images/Back Button/back button-green.png \
    build/resources/images/Back Button/back button-green.png \
    build/resources/images/Back Button/back button-white.png \
    build/resources/images/Back Button/back button-white.png \
    build/resources/images/Blue Icon/infoCureTime.png \
    build/resources/images/Blue Icon/infoCureTime.png \
    build/resources/images/Blue Icon/infoFileName.png \
    build/resources/images/Blue Icon/infoFileName.png \
    build/resources/images/Blue Icon/infoLayers.png \
    build/resources/images/Blue Icon/infoLayers.png \
    build/resources/images/Blue Icon/infoMaterial.png \
    build/resources/images/Blue Icon/infoMaterial.png \
    build/resources/images/Blue Icon/infoTime.png \
    build/resources/images/Blue Icon/infoTime.png \
    build/resources/images/Calibration and Printing Sequence/P1.jpg \
    build/resources/images/Calibration and Printing Sequence/P1.jpg \
    build/resources/images/Calibration and Printing Sequence/P1.jpg \
    build/resources/images/Calibration and Printing Sequence/P10.jpg \
    build/resources/images/Calibration and Printing Sequence/P10.jpg \
    build/resources/images/Calibration and Printing Sequence/P10.jpg \
    build/resources/images/Calibration and Printing Sequence/P11.jpg \
    build/resources/images/Calibration and Printing Sequence/P11.jpg \
    build/resources/images/Calibration and Printing Sequence/P11.jpg \
    build/resources/images/Calibration and Printing Sequence/P12.jpg \
    build/resources/images/Calibration and Printing Sequence/P12.jpg \
    build/resources/images/Calibration and Printing Sequence/P12.jpg \
    build/resources/images/Calibration and Printing Sequence/P13.jpg \
    build/resources/images/Calibration and Printing Sequence/P13.jpg \
    build/resources/images/Calibration and Printing Sequence/P13.jpg \
    build/resources/images/Calibration and Printing Sequence/P14.jpg \
    build/resources/images/Calibration and Printing Sequence/P14.jpg \
    build/resources/images/Calibration and Printing Sequence/P14.jpg \
    build/resources/images/Calibration and Printing Sequence/P15.jpg \
    build/resources/images/Calibration and Printing Sequence/P15.jpg \
    build/resources/images/Calibration and Printing Sequence/P15.jpg \
    build/resources/images/Calibration and Printing Sequence/P16.jpg \
    build/resources/images/Calibration and Printing Sequence/P16.jpg \
    build/resources/images/Calibration and Printing Sequence/P16.jpg \
    build/resources/images/Calibration and Printing Sequence/P17.jpg \
    build/resources/images/Calibration and Printing Sequence/P17.jpg \
    build/resources/images/Calibration and Printing Sequence/P17.jpg \
    build/resources/images/Calibration and Printing Sequence/P18.jpg \
    build/resources/images/Calibration and Printing Sequence/P18.jpg \
    build/resources/images/Calibration and Printing Sequence/P18.jpg \
    build/resources/images/Calibration and Printing Sequence/P2.jpg \
    build/resources/images/Calibration and Printing Sequence/P2.jpg \
    build/resources/images/Calibration and Printing Sequence/P2.jpg \
    build/resources/images/Calibration and Printing Sequence/P3.jpg \
    build/resources/images/Calibration and Printing Sequence/P3.jpg \
    build/resources/images/Calibration and Printing Sequence/P3.jpg \
    build/resources/images/Calibration and Printing Sequence/P4.jpg \
    build/resources/images/Calibration and Printing Sequence/P4.jpg \
    build/resources/images/Calibration and Printing Sequence/P4.jpg \
    build/resources/images/Calibration and Printing Sequence/P5.jpg \
    build/resources/images/Calibration and Printing Sequence/P5.jpg \
    build/resources/images/Calibration and Printing Sequence/P5.jpg \
    build/resources/images/Calibration and Printing Sequence/P6.jpg \
    build/resources/images/Calibration and Printing Sequence/P6.jpg \
    build/resources/images/Calibration and Printing Sequence/P6.jpg \
    build/resources/images/Calibration and Printing Sequence/P7.jpg \
    build/resources/images/Calibration and Printing Sequence/P7.jpg \
    build/resources/images/Calibration and Printing Sequence/P7.jpg \
    build/resources/images/Calibration and Printing Sequence/P8.jpg \
    build/resources/images/Calibration and Printing Sequence/P8.jpg \
    build/resources/images/Calibration and Printing Sequence/P8.jpg \
    build/resources/images/Calibration and Printing Sequence/P9.jpg \
    build/resources/images/Calibration and Printing Sequence/P9.jpg \
    build/resources/images/Calibration and Printing Sequence/P9.jpg \
    build/resources/images/Calibration and Printing Sequence/UI-01.jpg \
    build/resources/images/Calibration and Printing Sequence/UI-01.jpg \
    build/resources/images/Calibration and Printing Sequence/UI-01.jpg \
    build/resources/images/Calibration and Printing Sequence/UI-01.png \
    build/resources/images/Calibration and Printing Sequence/UI-01.png \
    build/resources/images/Calibration and Printing Sequence/UI-01.png \
    build/resources/images/Red Icon/infoCureTime.png \
    build/resources/images/Red Icon/infoCureTime.png \
    build/resources/images/Red Icon/infoFileName.png \
    build/resources/images/Red Icon/infoFileName.png \
    build/resources/images/Red Icon/infoLayers.png \
    build/resources/images/Red Icon/infoLayers.png \
    build/resources/images/Red Icon/infoMaterial.png \
    build/resources/images/Red Icon/infoMaterial.png \
    build/resources/images/Red Icon/infoTime.png \
    build/resources/images/Red Icon/infoTime.png \
    build/resources/images/White Icon/aboutus_icon.png \
    build/resources/images/White Icon/aboutus_icon.png \
    build/resources/images/White Icon/aboutus_icon.png \
    build/resources/images/White Icon/aboutus_icon.png \
    build/resources/images/White Icon/controlOff.png \
    build/resources/images/White Icon/controlOff.png \
    build/resources/images/White Icon/controlOff.png \
    build/resources/images/White Icon/controlOff.png \
    build/resources/images/White Icon/controlOff.png \
    build/resources/images/White Icon/controlWhite.png \
    build/resources/images/White Icon/controlWhite.png \
    build/resources/images/White Icon/controlWhite.png \
    build/resources/images/White Icon/controlWhite.png \
    build/resources/images/White Icon/downWhite.png \
    build/resources/images/White Icon/downWhite.png \
    build/resources/images/White Icon/downWhite.png \
    build/resources/images/White Icon/downWhite.png \
    build/resources/images/White Icon/fanOff.png \
    build/resources/images/White Icon/fanOff.png \
    build/resources/images/White Icon/fanOff.png \
    build/resources/images/White Icon/fanOff.png \
    build/resources/images/White Icon/fanOff.png \
    build/resources/images/White Icon/fanOn.png \
    build/resources/images/White Icon/fanOn.png \
    build/resources/images/White Icon/fanOn.png \
    build/resources/images/White Icon/fanOn.png \
    build/resources/images/White Icon/fanOn.png \
    build/resources/images/White Icon/fillWhite.png \
    build/resources/images/White Icon/fillWhite.png \
    build/resources/images/White Icon/fillWhite.png \
    build/resources/images/White Icon/fillWhite.png \
    build/resources/images/White Icon/homeWhite.png \
    build/resources/images/White Icon/homeWhite.png \
    build/resources/images/White Icon/homeWhite.png \
    build/resources/images/White Icon/homeWhite.png \
    build/resources/images/White Icon/ledOffWhite.png \
    build/resources/images/White Icon/ledOffWhite.png \
    build/resources/images/White Icon/ledOffWhite.png \
    build/resources/images/White Icon/ledOffWhite.png \
    build/resources/images/White Icon/ledOnWhite.png \
    build/resources/images/White Icon/ledOnWhite.png \
    build/resources/images/White Icon/ledOnWhite.png \
    build/resources/images/White Icon/ledOnWhite.png \
    build/resources/images/White Icon/powerOff.png \
    build/resources/images/White Icon/powerOff.png \
    build/resources/images/White Icon/powerOff.png \
    build/resources/images/White Icon/powerOff.png \
    build/resources/images/White Icon/powerOff.png \
    build/resources/images/White Icon/powerWhite.png \
    build/resources/images/White Icon/powerWhite.png \
    build/resources/images/White Icon/powerWhite.png \
    build/resources/images/White Icon/powerWhite.png \
    build/resources/images/White Icon/printOff.png \
    build/resources/images/White Icon/printOff.png \
    build/resources/images/White Icon/printOff.png \
    build/resources/images/White Icon/printOff.png \
    build/resources/images/White Icon/printOff.png \
    build/resources/images/White Icon/rectangleWhite.png \
    build/resources/images/White Icon/rectangleWhite.png \
    build/resources/images/White Icon/rectangleWhite.png \
    build/resources/images/White Icon/rectangleWhite.png \
    build/resources/images/White Icon/settingOff.png \
    build/resources/images/White Icon/settingOff.png \
    build/resources/images/White Icon/settingOff.png \
    build/resources/images/White Icon/settingOff.png \
    build/resources/images/White Icon/settingOff.png \
    build/resources/images/White Icon/controlOff.png \
    build/resources/images/White Icon/powerOff.png \
    build/resources/images/White Icon/printOff.png \
    build/resources/images/White Icon/settingOff.png \
    build/resources/images/White Icon/settingWhite.png \
    build/resources/images/White Icon/settingWhite.png \
    build/resources/images/White Icon/settingWhite.png \
    build/resources/images/White Icon/settingWhite.png \
    build/resources/images/White Icon/settingsNetworkOff.png \
    build/resources/images/White Icon/settingsNetworkOff.png \
    build/resources/images/White Icon/settingsNetworkOff.png \
    build/resources/images/White Icon/settingsNetworkOff.png \
    build/resources/images/White Icon/settingsRecalibrationOff.png \
    build/resources/images/White Icon/settingsRecalibrationOff.png \
    build/resources/images/White Icon/settingsRecalibrationOff.png \
    build/resources/images/White Icon/settingsRecalibrationOff.png \
    build/resources/images/White Icon/squareWhite.png \
    build/resources/images/White Icon/squareWhite.png \
    build/resources/images/White Icon/squareWhite.png \
    build/resources/images/White Icon/squareWhite.png \
    build/resources/images/White Icon/square_squareWhite.png \
    build/resources/images/White Icon/square_squareWhite.png \
    build/resources/images/White Icon/square_squareWhite.png \
    build/resources/images/White Icon/square_squareWhite.png \
    build/resources/images/White Icon/themeIcon.png \
    build/resources/images/White Icon/themeIcon.png \
    build/resources/images/White Icon/themeIcon.png \
    build/resources/images/White Icon/themeIcon.png \
    build/resources/images/White Icon/tiltWhite.png \
    build/resources/images/White Icon/tiltWhite.png \
    build/resources/images/White Icon/tiltWhite.png \
    build/resources/images/White Icon/tiltWhite.png \
    build/resources/images/White Icon/untilltWhite.png \
    build/resources/images/White Icon/untilltWhite.png \
    build/resources/images/White Icon/untilltWhite.png \
    build/resources/images/White Icon/untilltWhite.png \
    build/resources/images/White Icon/upWhite.png \
    build/resources/images/White Icon/upWhite.png \
    build/resources/images/White Icon/upWhite.png \
    build/resources/images/White Icon/upWhite.png \
    build/resources/images/White Icon/upWhite.png \
    build/resources/images/qr_code/g3d_website_qrcode.png \
    build/resources/images/sample_projection/full_76XY.jpg \
    build/resources/images/sample_projection/grid_76XY.jpg \
    build/resources/images/sample_projection/rectangle_76XY.jpg
