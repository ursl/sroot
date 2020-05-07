
.PHONY: clean

CPPFILES = asimple.o
OPPFILES = asimpleW.o
EXEFILES = main.o

%.o: %.cc %.hh
	clang++ -c $< -o $@

%.o: %.mm %.h
	clang++ -c $< -o $@

main-swift.o: main.swift $(OPPFILES) $(CPPFILES)
	swiftc -import-objc-header asimpleW.h -framework Foundation -I/usr/include -c $< -o $@

main-cpp.o: main.cc $(OPPFILES) $(CPPFILES)
	clang++ -c $< -o $@

all: cpp swift

swift: main-swift.o
	swiftc -o main-swift -framework Foundation -lc++ $< asimpleW.o asimple.o

cpp: main-cpp.o
	clang++ -o main-cpp $< asimple.o


# -- clean up
clean:
	rm -f *.o main-cpp main-swift *~
