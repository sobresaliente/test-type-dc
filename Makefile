CXX = c++
CXXFLAGS = -std=c++17 -Wall -Wextra
INCLUDES = -I/opt/homebrew/include/SDL2 -I/opt/homebrew/include
LIBS = -L/opt/homebrew/lib -lSDL2 -lSDL2_image
FRAMEWORKS = -framework Cocoa -framework IOKit -framework CoreVideo

TARGET = CheckersGame
SOURCES = main.cpp

$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(SOURCES) -o $(TARGET) $(LIBS) $(FRAMEWORKS)

clean:
	rm -f $(TARGET)

.PHONY: clean 