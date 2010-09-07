//
//  TFProductList.h
//  PeepNews
//
//  Created by Justin Marney on 5/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TFProductList : NSObject {
  NSString * JSONURLString;
}

@property (nonatomic, retain) NSString * JSONURLString;

@end