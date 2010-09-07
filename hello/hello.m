#import <Foundation/Foundation.h>

@interface CheeseWheel : NSObject
{
  BOOL isGoat;
  CheeseWheel * friend;
}

-(void) setIsGoat:(BOOL)val;
-(BOOL) isGoat;

-(void) setFriend:(CheeseWheel *)val;
-(CheeseWheel *) friend;
@end

@implementation CheeseWheel

-(void) setIsGoat:(BOOL)val
{
  isGoat = val;
}

-(BOOL) isGoat
{
  return isGoat;
}

-(void) setFriend:(CheeseWheel *)val
{
  friend = val;
}

-(CheeseWheel *) friend
{
  return friend;
}
@end

int main (int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  CheeseWheel * jack = [[CheeseWheel alloc] init];
  jack.isGoat = YES;

  CheeseWheel * jeff = [[CheeseWheel alloc] init];
  jeff.isGoat = NO;

  jack.friend = jeff;

  NSLog(@"jack is a goat? %@", jack.isGoat ? @"YES" : @"NO");
  NSLog(@"jack's friend jeff is a goat? %@", jack.friend.isGoat ? @"YES" : @"NO");

  [jack release];
  [pool drain];

  return 0;
}
