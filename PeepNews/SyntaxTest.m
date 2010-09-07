//
//  SyntaxTest.m
//  PeepNews
//
//  Created by Justin Marney on 5/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface SyntaxTest : SenTestCase {
  
}

@end

@implementation SyntaxTest

- (void) testTrue
{
  STAssertTrue(YES, @"Message will be shown on failure");
}

- (void) testEquality
{
  NSString * myString = @"Omfg";
  STAssertEqualObjects(myString, @"Omfg", nil);
}

@end
