import Foundation

//swiftc -c main.swift -import-objc-header asimpleW.h -framework Foundation -I/usr/include

print("Hello from swift:")

let a = asimpleW()
a.printMe()

print("and a.getSquare() = \(a.getSquare())")
