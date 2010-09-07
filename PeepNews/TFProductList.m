//
//  TFProductList.m
//  PeepNews
//
//  Created by Justin Marney on 5/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TFProductList.h"

@implementation TFProductList

@synthesize JSONURLString;

- (id) init
{
  if (!(self = [super init])) {
    return nil;
  }

  self.JSONURLString = @"http://peepcode.com/products.json";
  return self;
}

@end
