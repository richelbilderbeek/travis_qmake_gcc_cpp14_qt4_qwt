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
LIBS += -lqwt-qt4
INCLUDEPATH += /usr/include/qwt-qt4

message(Host name: $$QMAKE_HOST.name)
contains(QMAKE_HOST.name,fwn-biol-132-102) {
  message("Host is university computer in my office")
  QMAKE_CXX = g++-5
  QMAKE_LINK = g++-5
  QMAKE_CC = gcc-5
}
