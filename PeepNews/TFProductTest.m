//
//  TFProductTest.m
//  PeepNews
//
//  Created by Justin Marney on 5/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "TFProduct.h"

@interface TFProductTest : SenTestCase {
  NSMutableDictionary * dict;
  TFProduct * product;
}

@end

@implementation TFProductTest
- (void) setUp
{
  dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:
          @"tbone", @"title",
          @"http://sorescode.com/2010/4/15/language-rdoc", @"url",
          nil];
  product = [[TFProduct alloc] initWithDictionary:dict];
}

- (void) testShouldSetTitleFromDictionaryOnInit
{
  STAssertEqualObjects([product title], @"tbone", nil);
  [product release];

  [dict setObject:@"steak" forKey:@"title"];
  product = [[TFProduct alloc] initWithDictionary:dict];
  STAssertEqualObjects([product title], @"steak", nil);
}

- (void) testShouldSetUrlFromDictionaryToNSURLOnInit
{
  STAssertEqualObjects([[product url] className], @"NSURL", nil);
}

- (void) testShouldCreateNSURLWithRelativePathFromDictionaryOnInit
{
  STAssertEqualObjects([[product url] relativePath], @"/2010/4/15/language-rdoc", nil);
}

- (void) tearDown
{
  [product release];
}
@end
