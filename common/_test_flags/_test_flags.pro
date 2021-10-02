TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += c++17

QMAKE_CXXFLAGS += -std=c++17
QMAKE_CXXFLAGS_RELEASE -= -O2
QMAKE_CXXFLAGS_RELEASE += -O3 -flto -march=native -g
QMAKE_LFLAGS_RELEASE -= -Wl,-O1
QMAKE_LFLAGS_RELEASE += -O3 -flto -march=native

DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000

INCLUDEPATH += $$PWD/../../

SOURCES += \
    test_flags.cc

unix:!macx: LIBS += -L$$OUT_PWD/../unit_test_util/ -lunit_test_util

INCLUDEPATH += $$PWD/../unit_test_util
DEPENDPATH += $$PWD/../unit_test_util

unix:!macx: LIBS += -L$$OUT_PWD/../flags/ -lflags

INCLUDEPATH += $$PWD/../flags
DEPENDPATH += $$PWD/../flags
