#------------------------------------------------
#
# Encryption is a wrapper for the botan library
#
#-------------------------------------------------

TEMPLATE = lib
TARGET = Encryption
CONFIG += plugin release
VERSION = 1.0.0
DEFINES += ENCRYPTION_LIBRARY

include(Botan.pri)

HEADERS += \
    encryption.h \
    botan.h

SOURCES += \
    encryption.cpp \
    botan.cpp

