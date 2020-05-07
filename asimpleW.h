//#import "asimple.hh"
#include <Foundation/Foundation.h>

// clang++ -c -o asimple.o  asimple.cc
// clang++ -c -o asimpleW.o asimpleW.mm
// swiftc -c  -o main.o -import-objc-header asimpleW.h -framework Foundation -I/usr/include main.swift
// swiftc -o main -framework Foundation -lc++ main.o asimpleW.o asimple.o

@interface asimpleW: NSObject

- (void)printMe;
- (int)getSquare;
@end
