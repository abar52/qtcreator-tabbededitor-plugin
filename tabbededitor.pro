# Qt Creator linking
QTC_PLUGIN_NAME = TabbedEditor
QTC_LIB_DEPENDS += \
    extensionsystem \
    utils
QTC_PLUGIN_DEPENDS += \
    coreplugin \
    projectexplorer \
    texteditor

## set the QTC_SOURCE environment variable to override the setting here
QTCREATOR_SOURCES = $$(QTC_SOURCE)
isEmpty(QTCREATOR_SOURCES):error("Error. QTC_SOURCE variable must point to Qt Creator sources.")

## set the QTC_BUILD environment variable to override the setting here
IDE_BUILD_TREE = $$(QTC_BUILD)
isEmpty(IDE_BUILD_TREE):error("Error. QTC_BUILD variable must be set.")

## override IDE_LIBRARY_BASENAME for x64
IDE_LIBRARY_BASENAME = $$(QTC_LIBRARY_BASENAME)
isEmpty(IDE_BUILD_TREE):error("Error. QTC_IBRARY_BASENAME variable must be set to lib or lib64.")

## uncomment to build plugin into user config directory
## <localappdata>/plugins/<ideversion>
##    where <localappdata> is e.g.
##    "%LOCALAPPDATA%\QtProject\qtcreator" on Windows Vista and later
##    "$XDG_DATA_HOME/data/QtProject/qtcreator" or "~/.local/share/data/QtProject/qtcreator" on Linux
##    "~/Library/Application Support/QtProject/Qt Creator" on Mac
USE_USER_DESTDIR = yes

include($$QTCREATOR_SOURCES/src/qtcreatorplugin.pri)

DEFINES += TABBEDEDITOR_LIBRARY

# TabbedEditor files

SOURCES += \
    plugin.cpp \
    tabbar.cpp

HEADERS += \
    constants.h \
    plugin.h \
    tabbar.h

RESOURCES += \
    resources/res.qrc

OTHER_FILES += \
    README.md
