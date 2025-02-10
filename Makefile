# Compiler and flags
CXX = clang++
CXXFLAGS = -g -Wall -Wextra -std=c++14
INCLUDES = -I/opt/homebrew/include
LDFLAGS = -L/opt/homebrew/lib
LIBS = -lraylib

# Project files
TARGET = classy-clash
SOURCES = main.cpp
OBJECTS = $(SOURCES:.cpp=.o)

# Build rules
all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $(TARGET) $(LDFLAGS) $(LIBS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

# Debug build
debug: CXXFLAGS += -DDEBUG -g
debug: clean all

# Clean up
clean:
	rm -f $(OBJECTS) $(TARGET)

.PHONY: all debug clean
