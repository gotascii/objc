//
//  TFProduct.h
//  PeepNews
//
//  Created by Justin Marney on 5/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TFProduct : NSObject {
  NSString * title;
}

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSURL * url;

//- (id) initWithDictionary:(NSMutableDictionary *) initDictionary;
- (id) initWithDictionary:(id) initDictionary;

@end
