//
//  Hello_IphoneAppDelegate.h
//  Hello Iphone
//
//  Created by Justin Marney on 6/1/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Hello_IphoneViewController;

@interface Hello_IphoneAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Hello_IphoneViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Hello_IphoneViewController *viewController;

@end

