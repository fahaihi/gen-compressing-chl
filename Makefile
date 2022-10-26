.PHONY: all clean

READ_LENGTH ?= 100
MX_READ_LIST_SZ ?= 16853510
HASH_TABLE_SZ ?= 314606869
USE_FS_SIM ?= 1

CC ?= gcc
CXX ?= g++
CPPFLAGS += -DREAD_LENGTH=$(READ_LENGTH) -DMX_READ_LIST_SZ=$(MX_READ_LIST_SZ) -DHASH_TABLE_SZ=$(HASH_TABLE_SZ) -DUSE_FS_SIM=$(USE_FS_SIM) -fdiagnostics-color=always -O3 -mcmodel=medium
CXXFLAGS += -std=c++17

all: chl unchl

chl: chl.cpp
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -ochl chl.cpp

unchl: unchl.cpp
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -ounchl unchl.cpp

clean:
	rm -rf chl unchl