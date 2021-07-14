import XCTest

import gzreaderTests

var tests = [XCTestCaseEntry]()
tests += gzreaderTests.allTests()
XCTMain(tests)
