CXX=clang++
CXXFLAGS=-std=c++17
INCLUDES=/Users/mehmetbarisbastug/Downloads/googletest-1.13.0/googletest/include
LIBS=/Users/mehmetbarisbastug/Downloads/googletest-1.13.0/build/lib/libgtest.a /Users/mehmetbarisbastug/Downloads/googletest-1.13.0/build/lib/libgtest_main.a
SRC=test.cpp

all: main


main: $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o main  -I$(INCLUDES) $(LIBS)

clean:
	rm -f  main

