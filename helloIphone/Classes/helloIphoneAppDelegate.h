//
//  helloIphoneAppDelegate.h
//  helloIphone
//
//  Created by Justin Marney on 6/1/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class helloIphoneViewController;

@interface helloIphoneAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    helloIphoneViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet helloIphoneViewController *viewController;

@end

