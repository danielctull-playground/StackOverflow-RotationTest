//
//  FirstViewController.m
//  RotationTest
//
//  Created by Daniel Tull on 30/01/2011.
//  Copyright 2011 Daniel Tull. All rights reserved.
//

#import "FirstViewController.h"


@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)nibBundle {
    
	if (!(self = [super initWithNibName:nibName bundle:nibBundle])) return nil;
	
	self.title = @"First";
	
    return self;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
	return UIInterfaceOrientationIsPortrait(toInterfaceOrientation);
}

@end
