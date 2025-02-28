TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += c++17

QMAKE_CXXFLAGS += -std=c++17
QMAKE_CXXFLAGS += -DBOOST_LOG_DYN_LINK
QMAKE_CXXFLAGS_RELEASE -= -O2
QMAKE_CXXFLAGS_RELEASE += -O3 -flto -march=native
QMAKE_LFLAGS_RELEASE -= -Wl,-O1
QMAKE_LFLAGS_RELEASE += -O3 -flto -march=native

DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000

INCLUDEPATH += $$PWD/../../../

SOURCES +=  \
    test_sync_node_state.cc

unix:!macx: LIBS += -L$$OUT_PWD/../../../common/unit_test_util/ -lunit_test_util

INCLUDEPATH += $$PWD/../../../common/unit_test_util
DEPENDPATH += $$PWD/../../../common/unit_test_util

unix:!macx: LIBS += -L$$OUT_PWD/../../../proto_cc/ -lproto_cc

INCLUDEPATH += $$PWD/../../../proto_cc
DEPENDPATH += $$PWD/../../../proto_cc

unix:!macx: LIBS += -L$$OUT_PWD/../../store/ -lnode_state_store

INCLUDEPATH += $$PWD/../../store
DEPENDPATH += $$PWD/../../store

unix:!macx: LIBS += -L$$OUT_PWD/../../mutation_propagator/ -lmutation_propagator

INCLUDEPATH += $$PWD/../../mutation_propagator
DEPENDPATH += $$PWD/../../mutation_propagator

LIBS += -lboost_log
LIBS += -lboost_thread
LIBS += -pthread
LIBS += -lprotobuf
