//
//  TFProductListTest.m
//  PeepNews
//
//  Created by Justin Marney on 5/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "TFProductList.h"

@interface TFProductListTest : SenTestCase {
}
@end

@implementation TFProductListTest
- (void) testShouldHaveUrlOfProductsJSONByDefault
{
  TFProductList * products = [[TFProductList alloc] init];
  STAssertEqualObjects([products JSONURLString], @"http://peepcode.com/products.json", nil);
  [products release];
}
@end
