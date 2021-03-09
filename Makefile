# CXX=g++
CXX=clang++

# Flags
CXXFLAGS=-std=c++14 -pipe -Wall -Wextra -Wshadow -Wfloat-equal -Wconversion \
		 -pedantic -Wformat=2 -fdiagnostics-color=always
DEBUG=-O0 -g -D_GLIBCXX_ASSERTIONS -fstack-clash-protection \
	  -fstack-protector-strong -fstack-protector-all
RELEASE=-O3

# $(CXX) src/main.cpp $(CXXFLAGS) $(RELEASE) -o build/main
main: src/main.cpp
	$(CXX) src/main.cpp $(CXXFLAGS) $(DEBUG) -o build/main

clean:
	rm build/main
