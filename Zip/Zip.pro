#-------------------------------------------------
#
# Zip is a wrapper for the zLib library
#
#-------------------------------------------------

TEMPLATE = lib
TARGET = Zip
CONFIG += plugin release
VERSION = 1.0.0
DEFINES += ZIP_LIBRARY

#include the config file
include($$PWD/zipconfig.pri)

HEADERS += \
    zipreader.h \
    zipwriter.h \
    zlib.h \
    zconf.h

SOURCES += \
    zip.cpp
