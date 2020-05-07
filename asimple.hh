#include <string>

// g++ asimple.cc -shared -o libasimple.so

class asimple {

public:
  asimple(std::string name, int someNumber);
  ~asimple();
  void printMe();
  int getSquare();

private:
  int fInt;
  std::string fString;

};
