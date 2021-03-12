# CXX=g++
CXX=clang++

# Flags
CXXFLAGS=-std=c++17 -Wall -Wextra -Werror -Wformat-security -Wundef \
		 -Wconversion -Wpedantic -Wformat=2 -fdiagnostics-color=always
DEBUG=-O0 -g3 -ftrapv -fstack-clash-protection -fstack-protector-all
RELEASE=-O2 -fconserve-stack -fdelete-null-pointer-checks -fexceptions \
		-fnothrow-opt

# $(CXX) src/main.cpp $(CXXFLAGS) $(RELEASE) -o build/main
main: src/main.cpp
	$(CXX) src/main.cpp $(CXXFLAGS) $(DEBUG) -o build/main

clean:
	rm build/main
