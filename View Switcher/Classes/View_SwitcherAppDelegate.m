//
//  View_SwitcherAppDelegate.m
//  View Switcher
//
//  Created by Justin Marney on 6/8/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "View_SwitcherAppDelegate.h"
#import "SwitchViewController.h"

@implementation View_SwitcherAppDelegate

@synthesize window;
@synthesize switchViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
  // Override point for customization after application launch
  [window addSubview:[switchViewController view]];
  [window makeKeyAndVisible];
	return YES;
}

- (void)dealloc {
  [window release];
  [switchViewController release];
  [super dealloc];
}

@end
