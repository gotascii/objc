//
//  TFProduct.m
//  PeepNews
//
//  Created by Justin Marney on 5/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TFProduct.h"

@implementation TFProduct

@synthesize title, url;

//- (id) initWithDictionary:(NSMutableDictionary *) initDictionary
- (id) initWithDictionary:(id) initDictionary
{
  if (!(self = [super init])) {
    return nil;
  }

  self.title = [initDictionary objectForKey:@"title"];
  self.url = [NSURL URLWithString:[initDictionary objectForKey:@"url"]];
  return self;
}

@end
