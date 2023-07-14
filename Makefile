CXX=clang++
CXXFLAGS=-std=c++17
#INCLUDES=/opt/homebrew/Cellar/googletest/1.13.0/include
#LIBS=/opt/homebrew/Cellar/googletest/1.13.0/lib/libgtest.a /opt/homebrew/Cellar/googletest/1.13.0/lib/libgtest_main.a
GOOGLETEST=googletest/googletest
GOOGLETEST_BUILD_PATH=$(GOOGLETEST)/build
GOOGLETEST_LIB_PATH=$(GOOGLETEST_BUILD_PATH)/lib
GOOGLETEST_INCLUDE_PATH=$(GOOGLETEST)/include
SRC=test.cpp
SHLIB=-lgtest -lgtest_main

all: main


main: $(SRC) $(GOOGLETEST_LIB_PATH)/libgtest.a $(GOOGLETEST_LIB_PATH)/libgtest_main.a 
	$(CXX) $(CXXFLAGS) $(SRC) -o main  -I$(GOOGLETEST_INCLUDE_PATH) -L$(GOOGLETEST_LIB_PATH) $(SHLIB)

$(GOOGLETEST_LIB_PATH)/libgtest.a: 
	mkdir -p $(GOOGLETEST_BUILD_PATH)
	cd $(GOOGLETEST_BUILD_PATH);cmake ..;make

$(GOOGLETEST_LIB_PATH)/libgtest_main.a: 
	mkdir -p $(GOOGLETEST_BUILD_PATH)
	cd $(GOOGLETEST_BUILD_PATH);cmake ..;make

clean:
	rm -f  main