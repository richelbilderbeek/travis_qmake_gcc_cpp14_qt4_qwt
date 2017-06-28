SOURCES += main.cpp

# Compile with high warning levels, a warning is an error
# Qt4 and Qwt go bad with -Weffc++
QMAKE_CXXFLAGS += -Wall -Wextra -Wshadow -Wnon-virtual-dtor -pedantic -Werror

# C++14
CONFIG += c++14
QMAKE_CXXFLAGS += -std=c++14

# Qt
QT += core widgets

# Qwt
#CONFIG += qwt
LIBS += -lqwt5-qt4
INCLUDEPATH += /usr/include/qwt-qt4

