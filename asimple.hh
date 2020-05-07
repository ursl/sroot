#include <string>

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
