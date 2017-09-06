//  Created by Oleg Gnidets on 9/6/17.
//  Copyright © 2017 Oleg Gnidets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	[[NSNotificationCenter defaultCenter] addObserver:self
											 selector:@selector(keyboardWillShow:)
												 name:UIKeyboardWillShowNotification
											   object:nil];
}

- (IBAction)endEditing {
	[self.view endEditing:YES];
}

- (void)keyboardWillShow:(NSNotification *)notification {
	id frameInfo = notification.userInfo[UIKeyboardFrameBeginUserInfoKey];
	// Expected to be CGRectValue not NSRect.
	CGFloat keyboardHeight = [frameInfo CGRectValue].size.height;

	NSLog(@"Frame info: %@", frameInfo);
	NSLog(@"Keyboard height: %f", keyboardHeight);
}


@end
