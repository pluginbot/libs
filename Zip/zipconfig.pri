unix {

    #Build the zlib lib and copy it to the build dir
    #make install; could be used ot install zLib
    zlibbuild.target = zlib
    zlibbuild.commands = $$PWD/zlib/configure; \
                        make -w -C $$PWD/zlib; \
                        cp $$quote($$PWD/zlib/libz.so) $$quote($${DISTDIR}/libz.so);

    QMAKE_EXTRA_TARGETS += zlibbuild
    PRE_TARGETDEPS = zlib

    #include the path and library
    INCLUDEPATH += $$PWD/zlib
    LIBS += -L$$PWD/zlib -lz
}

win32 {

    #Copy the dll to the build dir
    zlibbuild.target = zlib
    zlibbuild.commands = copy $$quote($$shell_path($$PWD/zlib/Windows/zlib1.dll)) $$quote($$shell_path($${DISTDIR}/zlib1.dll));

    QMAKE_EXTRA_TARGETS += zlibbuild
    PRE_TARGETDEPS = zlib

    #include the path and library
    INCLUDEPATH += $$PWD/zlib/Windows
    LIBS += -L$$PWD/zlib/Windows -lzdll
}


