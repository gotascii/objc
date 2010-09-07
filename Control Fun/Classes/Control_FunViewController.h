//
//  Control_FunViewController.h
//  Control Fun
//
//  Created by Justin Marney on 6/1/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Control_FunViewController : UIViewController <UIActionSheetDelegate> {
  UITextField *nameField;
  UITextField *numberField;
  UILabel *sliderLabel;
  UISwitch *leftSwitch;
  UISwitch *rightSwitch;
  UIButton *weirdButton;
}

@property (nonatomic, retain) IBOutlet UITextField *nameField;
@property (nonatomic, retain) IBOutlet UITextField *numberField;
@property (nonatomic, retain) IBOutlet UILabel *sliderLabel;
@property (nonatomic, retain) IBOutlet UISwitch *leftSwitch;
@property (nonatomic, retain) IBOutlet UISwitch *rightSwitch;
@property (nonatomic, retain) IBOutlet UIButton *weirdButton;

- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)backgroundTap:(id)sender;
- (IBAction)sliderChanged:(id)sender;
- (IBAction)toggleControls:(id)sender;
- (IBAction)switchChanged:(id)sender;
- (IBAction)buttonPressed;
- (void) setweirdButtonBackgroundImage:(NSString *)fileName forState:(UIControlState)controlState;

@end

