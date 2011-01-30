//
//  RotationTestAppDelegate.m
//  RotationTest
//
//  Created by Daniel Tull on 30/01/2011.
//  Copyright 2011 Daniel Tull. All rights reserved.
//

#import "RotationTestAppDelegate.h"

@implementation RotationTestAppDelegate


@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	// Override point for customization after application launch.
	[self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	/*
	 Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	 Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
	 */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Save data if appropriate.
}

- (void)dealloc {

	[window release];
    [super dealloc];
}

@end
