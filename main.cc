#include "asimple.hh"
#include <iostream>
#include <string>

int main() {
  std::cout << "Hello from C++:" << std::endl;
  asimple a("bla", 42);
  a.printMe();
  return 0;

}
