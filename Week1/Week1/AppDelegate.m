//
//  AppDelegate.m
//  Week1
//
//  Created by Alexander Herrera on 10/24/12.
//  Copyright (c) 2012 Alexander Herrera. All rights reserved.
//

#import "AppDelegate.h"
#import "Foundation/Foundation.h"

@implementation AppDelegate

- (void)dealloc
{
	[_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
	
	//Story Variables
	//Strings
		NSString * myName = @"Alexander Herrera and I'm from Miami, Florida.";
		NSString * myInfo = @"I'm in the Mobile Development Program.";
	//Integers of the lengths regarding my studying and program time
		int classLength = 1;
		int academicYear = 8;	
		int hrsMonDays = 10;
		int hrsTuesDays = 12;
		int hrsWedsDays = 14;
		int hrsThurDays = 14;
		int hrsFriDays = 6;
		int hrsSatDays = 4;
		float hrsSunDays = 5.00f;
		int totalHrs = hrsMonDays + hrsTuesDays + hrsWedsDays + hrsThurDays + hrsFriDays + hrsSatDays + (int)hrsSunDays;
	//Floats and using casting 
		int fullProgramLength = 32;
		float averageHrs = (float)totalHrs / 7;
		NSLog(@"%@",myName);
		NSLog(@"%@",myInfo);
		NSLog(@"%d",classLength);
		NSLog(@"%d",academicYear);
		NSLog(@"%d",hrsMonDays);
		NSLog(@"%d",hrsTuesDays);
		NSLog(@"%d",hrsWedsDays);
		NSLog(@"%d",hrsThurDays);
		NSLog(@"%d",hrsFriDays);
		NSLog(@"%d",hrsSatDays);
		NSLog(@"%f",hrsSunDays);
		NSLog(@"%d",totalHrs);
		NSLog(@"%d",fullProgramLength);
		NSLog(@"%f",averageHrs);
		BOOL buySeparate = true;
		NSLog(@"%",buySeparate);
	//Story begins
		
	
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
