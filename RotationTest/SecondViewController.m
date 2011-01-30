//
//  SecondViewController.m
//  RotationTest
//
//  Created by Daniel Tull on 30/01/2011.
//  Copyright 2011 Daniel Tull. All rights reserved.
//

#import "SecondViewController.h"


@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)nibBundle {
    
	if (!(self = [super initWithNibName:nibName bundle:nibBundle])) return nil;
	
	self.title = @"Second";
	
	UIBarButtonItem *dismiss = [[UIBarButtonItem alloc] initWithTitle:@"Dismiss"
																style:UIBarButtonItemStylePlain 
															   target:self 
															   action:@selector(dismiss:)];
	self.navigationItem.rightBarButtonItem = dismiss;
	[dismiss release];
	
    return self;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
	return YES;
}

- (IBAction)dismiss:(id)sender {
	[self.parentViewController dismissModalViewControllerAnimated:YES];
}

- (IBAction)presentNewModalVCSystem:(id)sender {
	
	UITabBarController *tbc = [[UITabBarController alloc] init];
	
	SecondViewController *vc1 = [[SecondViewController alloc] init];
	SecondViewController *vc2 = [[SecondViewController alloc] init];
	
	UINavigationController *nc1 = [[UINavigationController alloc] initWithRootViewController:vc1];
	UINavigationController *nc2 = [[UINavigationController alloc] initWithRootViewController:vc2];
	
	[vc1 release];
	[vc2 release];
	
	tbc.viewControllers = [NSArray arrayWithObjects:nc1, nc2, nil];
	
	[nc1 release];
	[nc2 release];
	
	[self presentModalViewController:tbc animated:YES];
	
	[tbc release];
	
}

@end
