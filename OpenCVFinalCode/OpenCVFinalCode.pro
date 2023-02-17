QT       += core gui
QT += multimedia

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11


TARGET = opencvtest
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS
# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    imagecropperdialog.cpp \
    main.cpp \
    mainwindow.cpp \
    src/camera/opencvcamera.cpp \
    src/imagecropper/imagecropper.cpp \
    src/imageenhancement/imageenhancement.cpp \
    src/imageenhancement/imgcontrastbrightness.cpp \
    src/imagefunction/imageconverter.cpp


HEADERS += \
    mainwindow.h \
    imagecropperdialog.h \
    src/camera/opencvcamera.h \
    src/imagecropper/imagecropper.h \
    src/imagecropper/imagecropper_e.h \
    src/imagecropper/imagecropper_p.h \
    src/imageenhancement/imageenhancement.h \
    src/imageenhancement/imgcontrastbrightness.h \
    src/imagefunction/imageconverter.h

FORMS += \
    mainwindow.ui \
    imagecropperdialog.ui \
    src/camera/opencvcamera.ui \
    src/imageenhancement/imageenhancement.ui \
    src/imageenhancement/imgcontrastbrightness.ui

# Default rules for deployment.
qnx: target.path = /home/pi/$${TARGET}/bin
else: unix:!android: target.path = /home/pi/$${TARGET}
!isEmpty(target.path): INSTALLS += target

unix:!macx: LIBS += -L$$PWD/../../rpi/sysroot/usr/lib/ -lwiringPi

INCLUDEPATH += $$PWD/../../rpi/sysroot/usr/include
DEPENDPATH += $$PWD/../../rpi/sysroot/usr/include

unix:!macx: LIBS += -L$$PWD/../../rpi/sysroot/usr/local/lib \
    -lopencv_core \
    -lopencv_imgcodecs \
    -lopencv_imgproc \
    -lopencv_highgui \
    -lopencv_photo \
    -lopencv_videoio \
    -lopencv_features2d \
    -lopencv_calib3d \
    -lopencv_flann

#unix:!macx: LIBS += -L$$PWD/home/minebeamitsumi/rpi/sysroot/usr/local/lib -lopencv_core -lopencv_imgcodecs -lopencv_imgproc -lopencv_photo -lopencv_videoio -lopencv_features2d

INCLUDEPATH += $$PWD/../../rpi/sysroot/usr/local/include/opencv4
DEPENDPATH += $$PWD/../../rpi/sysroot/usr/local/include/opencv4

#unix:!macx: LIBS += -L$$PWD/../../rpi/sysroot/usr/local/lib/ -lraspicam -lraspicam_cv

INCLUDEPATH += $$PWD/../../rpi/sysroot/usr/local/include
DEPENDPATH += $$PWD/../../rpi/sysroot/usr/local/include


############ include path for Linux environment ############
#INCLUDEPATH += /home/minebeamitsumi/my_opencv_dir/3rd_party_libs/opencv/build_aarch32/install_aarch32/usr/local/include/opencv4
#LIBS += -L/home/minebeamitsumi/my_opencv_dir/3rd_party_libs/opencv/build_aarch32/install_aarch32/usr/local/lib -lopencv_calib3d -lopencv_core -lz

#INCLUDEPATH += .
#INCLUDEPATH += /usr/local/include/opencv4
#lIBS += $(shell pkg-config --cflags --libs opencv)
#LIBS += -L/usr/local/lib \
#     -lopencv_calib3d \
#     -lopencv_core \
#     -lopencv_features2d \
#     -lopencv_flann \
#     -lopencv_highgui \
#     -lopencv_imgproc \
#     -lopencv_ml \
#     -lopencv_objdetect \
#     -lopencv_photo \
#     -lopencv_stitching \
#     -lopencv_videoio \


###########################################################


########## include Path for Windows environment ######################

#INCLUDEPATH += D:\\Nestor\\Libraries\\opencv3.4.2\\build\\include \

#LIBS += -LD:\\Nestor\\Libraries\\opencv3.4.2\\build\\bin \
#    libopencv_calib3d342 \
#    libopencv_core342 \
#    libopencv_features2d342 \
#    libopencv_flann342 \
#    libopencv_highgui342 \
#    libopencv_imgcodecs342 \
#    libopencv_imgproc342 \
#    libopencv_ml342 \
#    libopencv_objdetect342 \
#    libopencv_photo342 \
#    libopencv_shape342 \
#    libopencv_stitching342 \
#    libopencv_superres342 \
#    libopencv_video342 \
#    libopencv_videoio342 \
#    libopencv_videostab342

#######################################################################


