# CXX=g++
CXX=clang++

# Flags
CXXFLAGS=-std=c++17 -pipe -Wall -Wextra -Wshadow -Wundef -Wfloat-equal \
		 -Wconversion -Wpedantic -Wformat=2 -fdiagnostics-color=always
DEBUG=-O0 -g -D_GLIBCXX_ASSERTIONS -ftrapv -fstack-clash-protection \
	  -fstack-protector-strong -fstack-protector-all
RELEASE=-O3

# $(CXX) src/main.cpp $(CXXFLAGS) $(RELEASE) -o build/main
main: src/main.cpp
	$(CXX) src/main.cpp $(CXXFLAGS) $(DEBUG) -o build/main

clean:
	rm build/main
