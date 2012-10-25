//
//  AppDelegate.m
//  Week1
//
//  Created by Alexander Herrera on 10/24/12.
//  MDVBS 10/12
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
		NSString * myInfo = @"Mobile Development Program.";
	//Integers of the lengths regarding my studying and program time
		int classLength = 1;
		int academicYear = 8;
		int StartNewAcaYr = 1;
		int currentMonth = 10;
		int currentMonthInArr = currentMonth - 1;
		int hrsMonDays = 10;
		int hrsTuesDays = 12;
		int hrsWedsDays = 14;
		int hrsThurDays = 14;
		int hrsFriDays = 6;
		int hrsSatDays = 4;
		float hrsSunDays = 5.00f;
		int totalHrs = hrsMonDays + hrsTuesDays + hrsWedsDays + hrsThurDays + hrsFriDays + hrsSatDays + (int)hrsSunDays;
	//Floats and using casting
		int transferClass = 4;
		int fullProgramLength = 32;
		int myProgramLength = fullProgramLength - transferClass;
		float averageHrs = (float)totalHrs / 7;
		BOOL passedClass = true;
		int hrsInAWeek = 168;
		int hrsLeft = hrsInAWeek - totalHrs;
		NSArray * eachCourse;
		eachCourse = [NSArray arrayWithObjects: @"Apple Programming Language: Objective C I & Project Management and Assessment IV", @"Fundamentals of Physical Science", @"Apple Programming Language: Objective C II", @"Mobile Development Frameworks I", @"Mobile User Experience & Project Management and Assessment V", @"Mobile Development Frameworks II", @"Technical Writing", nil];
		int count;
		count = [eachCourse count];
	//Story begins
		NSLog(@"My name is %@ and I'm in the %@", myName, myInfo);
		NSLog(@"I started in January of this year and every class is %d month long and the whole program is %d months", classLength, fullProgramLength);
		if (currentMonth > academicYear) {
			NSLog(@"I'm in the Second academic year, which the classes are:");
			for (int i = 0; i < count; i++) {
				NSLog(@"%i %@", i+1,[eachCourse objectAtIndex:i]);
			}
		} else {
			NSLog(@"I'm still in the First academic year.");
		}
		while (StartNewAcaYr < academicYear) {
			int result = academicYear - StartNewAcaYr;
			NSLog(@"I'm still in the second academic year but I %d months left", result);
			StartNewAcaYr++;
		}
		NSLog(@"Ever since I started this program I been spending hours everyday studying,");
		//Mondays Conditionals
		if (hrsMonDays < 10) {
			NSLog(@"on Mondays I would study under %d hours a day.", hrsMonDays);
		} else if ((hrsMonDays >= 10) && (passedClass == true)) {
			NSLog(@"on Mondays I would study %d hours a day and passed all my classes.", hrsMonDays);
		} else {
			NSLog(@"on Mondays I would not study.");
		}
		//Tuesdays Conditionals
		if (hrsTuesDays < 10) {
			NSLog(@"on Tuesdays I would study under %d hours a day.", hrsTuesDays);
		} else if ((hrsTuesDays >= 10) || (passedClass == true)) {
			NSLog(@"on Tuesdays I would study %d hours a day and passed all my classes.", hrsTuesDays);
		} else {
			NSLog(@"on Tuesdays I would not study.");
		}
		//Wednesdays Conditionals
		if (hrsWedsDays < 10) {
			NSLog(@"on Wednesdays I would study under %d hours a day.", hrsWedsDays);
		} else if ((hrsWedsDays >= 10) && (passedClass == true)) {
			NSLog(@"on Wednesdays I would study %d hours a day and passed all my classes.", hrsWedsDays);
		} else {
			NSLog(@"on Wednesdays I would not study.");
		}
		//Thursdays Conditionals
		if (hrsThurDays < 10) {
			NSLog(@"on Thursdays I would study under %d hours a day.", hrsThurDays);
		} else if ((hrsThurDays >= 10) && (passedClass == true)) {
			NSLog(@"on Thursdays I would study %d hours a day and passed all my classes.", hrsThurDays);
		} else {
			NSLog(@"on Thursdays I would not study.");
		}
		//Fridays Conditionals
		if (hrsFriDays < 10) {
			NSLog(@"on Fridays I would study under %d hours a day.", hrsFriDays);
		} else if ((hrsFriDays >= 10) && (passedClass == true)) {
			NSLog(@"on Fridays I would study %d hours a day and passed all my classes.", hrsFriDays);
		} else {
			NSLog(@"on Fridays I would not study.");
		}
		//Saturdays Conditionals
		if (hrsSatDays < 10) {
			NSLog(@"on Saturdays I would study under %d hours a day.", hrsSatDays);
		} else if ((hrsSatDays >= 10) && (passedClass == true)) {
			NSLog(@"on Saturdays I would study %d hours a day and passed all my classes.", hrsSatDays);
		} else {
			NSLog(@"on Saturdays I would not study.");
		}
		//Sundays Conditionals
		if ((int)hrsSunDays < 10) {
			NSLog(@"on Sundays I would study under %d hours a day.", (int)hrsSunDays);
		} else if (((int)hrsSunDays >= 10) && (passedClass == true)) {
			NSLog(@"on Sundays I would study %d hours a day and passed all my classes.", (int)hrsSunDays);
		} else {
			NSLog(@"on Sundays I would not study.");
		}
	
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
