#import "asimpleW.h"
#import "asimple.hh"

// clang -shared -framework Foundation -lstdc++ -lc++ libasimple.so asimpleW.mm -o asimpleW.so

@implementation asimpleW

- (void)printMe {
  asimple a("wrapped", 43);
  a.printMe();
}

- (int)getSquare {
  asimple a("wrapped", 4);
  return a.getSquare();
}

@end
