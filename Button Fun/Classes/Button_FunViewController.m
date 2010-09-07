//
//  Button_FunViewController.m
//  Button Fun
//
//  Created by Justin Marney on 6/1/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "Button_FunViewController.h"

@implementation Button_FunViewController

@synthesize statusText;

- (IBAction)buttonPressed:(id)sender {
  NSString *title = [sender titleForState:UIControlStateNormal];

  NSString *newText = [[NSString alloc] initWithFormat:@"%@ button pressed", title];
  [statusText setText:newText];
  [newText release];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
 [self setStatusText:nil]; 
}


- (void)dealloc {
  [statusText release];
  [super dealloc];
}

@end
