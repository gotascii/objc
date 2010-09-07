//
//  SwitchViewController.h
//  View Switcher
//
//  Created by Justin Marney on 6/8/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YellowViewController;
@class BlueViewController

@interface SwitchViewController : UIViewController {
  YellowViewController *yellowViewController;
  BlueViewController *blueViewController;
}

@property (retain, nonatomic) YellowViewController *yellowViewController;
@property (retain, nonatomic) BlueViewController *blueViewController;

-(IBAction)switchViews:(id)sender;

@end
