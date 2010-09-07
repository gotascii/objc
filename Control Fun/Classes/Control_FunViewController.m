//
//  Control_FunViewController.m
//  Control Fun
//
//  Created by Justin Marney on 6/1/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "Control_FunViewController.h"

@implementation Control_FunViewController

@synthesize nameField;
@synthesize numberField;
@synthesize sliderLabel;
@synthesize leftSwitch;
@synthesize rightSwitch;
@synthesize weirdButton;

- (IBAction)sliderChanged:(id)sender {
  UISlider *slider = (UISlider *)sender;
  int sliderValue = (int)[slider value];
  NSString *sliderLabelText = [[NSString alloc] initWithFormat:@"%d", sliderValue];
  [sliderLabel setText:sliderLabelText];
  [sliderLabelText release];
}

- (IBAction)backgroundTap:(id)sender {
  [nameField resignFirstResponder];
  [numberField resignFirstResponder];
}

- (IBAction)textFieldDoneEditing:(id)sender {
  [sender resignFirstResponder];
}

- (IBAction)toggleControls:(id)sender {
  int leftSwitchIdx = 0;
  if ([sender selectedSegmentIndex] == leftSwitchIdx)
  {
    leftSwitch.hidden = NO;
    rightSwitch.hidden = NO;
    weirdButton.hidden = YES;
  }
  else
  {
    leftSwitch.hidden = YES;
    rightSwitch.hidden = YES;
    weirdButton.hidden = NO;
  }
}

- (IBAction)switchChanged:(id)sender {
  BOOL setting = [sender isOn];
  [leftSwitch setOn:setting animated:YES];
  [rightSwitch setOn:setting animated:YES];
}

- (IBAction)buttonPressed {
  UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                initWithTitle:@"Title"
                                delegate:self
                                cancelButtonTitle:@"Cancel"
                                destructiveButtonTitle:@"Destroy"
                                otherButtonTitles:nil];
  [actionSheet showInView:self.view];
  [actionSheet release];
}

- (void) actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
  if (buttonIndex != [actionSheet cancelButtonIndex]) {
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Alert"
                          message:@"Hey Dick"
                          delegate:self
                          cancelButtonTitle:@"Cancel"
                          otherButtonTitles:nil];
    [alert show];
    [alert release];
  }
}



- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidLoad {
  [self setweirdButtonBackgroundImage:@"whiteButton.png" forState:UIControlStateNormal];
  [self setweirdButtonBackgroundImage:@"blueButton.png" forState:UIControlStateHighlighted];  
}

- (void) setweirdButtonBackgroundImage:(NSString *)fileName forState:(UIControlState)controlState {
  NSString *imagePath = [[NSBundle mainBundle] pathForResource:fileName ofType:nil];
  UIImage *buttonImage = [UIImage imageWithContentsOfFile:imagePath];
  UIImage *stretchableButtonImage = [buttonImage stretchableImageWithLeftCapWidth:12 topCapHeight:0];
  [weirdButton setBackgroundImage:stretchableButtonImage forState:controlState];  
}

- (void)viewDidUnload {
  [self setNameField:nil];
  [self setNumberField:nil];
  [self setSliderLabel:nil];
  [self setLeftSwitch:nil];
  [self setRightSwitch:nil];
  [self setWeirdButton:nil];
}

- (void)dealloc {
  [nameField dealloc];
  [numberField dealloc];
  [sliderLabel dealloc];
  [leftSwitch dealloc];
  [rightSwitch dealloc];
  [weirdButton dealloc];
  [super dealloc];
}

@end
