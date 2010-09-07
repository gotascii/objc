//
//  Button_FunViewController.h
//  Button Fun
//
//  Created by Justin Marney on 6/1/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Button_FunViewController : UIViewController {
  UILabel *statusText;
}

@property (nonatomic, retain) IBOutlet UILabel *statusText;

- (IBAction)buttonPressed:(id)sender;

@end

