//
//  ReformSimulatiorAppDelegate.m
//  ReformSimulatior
//
//  Created by 水野 真史 on 11/07/31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ReformSimulatiorAppDelegate.h"
#import "ReformSimulatiorViewController.h"
#import "SimulatiorMainViewController.h"

@implementation ReformSimulatiorAppDelegate


@synthesize window=_window;

@synthesize viewController=_viewController;

@synthesize naviController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	
	ReformSimulatiorViewController *mvc = [[[ReformSimulatiorViewController alloc] initWithNibName:nil bundle:nil] autorelease];
	
	naviController = [[UINavigationController alloc] init];
    
	//UIControllerViewを追加
	[naviController pushViewController:mvc animated:NO];
	
	//バーを消す
	//[naviController setNavigationBarHidden:YES animated:NO];
    
	//バーのスタイルを指定
	//[naviController.navigationBar setBarStyle:UIBarStyleBlackOpaque];	
    
	//バーの色を指定
	//naviController.navigationBar.tintColor = [UIColor colorWithRed:0.651 green:0.565 blue:0.451 alpha:1.0];
	
	[_window addSubview:naviController.view];
    [_window makeKeyAndVisible];
}
- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

@end
