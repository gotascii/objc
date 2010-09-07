//
//  Hello_IphoneAppDelegate.m
//  Hello Iphone
//
//  Created by Justin Marney on 6/1/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "Hello_IphoneAppDelegate.h"
#import "Hello_IphoneViewController.h"

@implementation Hello_IphoneAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
