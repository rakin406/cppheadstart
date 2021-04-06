CXX=clang++

# Flags
CXXFLAGS=-std=c++17 -Wall -Wextra -Wformat-security -Wundef -Wconversion \
		 -Wpedantic -Wformat=2
DEBUG=-g3 -fstack-clash-protection -fstack-protector-all
RELEASE=-O3 -fdelete-null-pointer-checks

# $(CXX) src/main.cpp $(CXXFLAGS) $(RELEASE) -o build/main
main: src/main.cpp
	$(CXX) src/main.cpp $(CXXFLAGS) $(DEBUG) -o build/main

clean:
	rm build/main
