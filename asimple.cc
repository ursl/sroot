#include <iostream>

#include "asimple.hh"

asimple::asimple(std::string name, int someNumber) {
  fInt = someNumber;
  fString = name;
}

asimple::~asimple() {
}

void asimple::printMe() {
  std::cout << "asimple class object with name ->" << fString << "<- and version ->" << fInt << "<-" << std::endl;
}

int asimple::getSquare() {
  return fInt*fInt;
}
