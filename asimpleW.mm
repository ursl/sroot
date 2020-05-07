#import "asimpleW.h"
#import "asimple.hh"

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
