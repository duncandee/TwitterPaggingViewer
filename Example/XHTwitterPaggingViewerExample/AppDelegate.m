//
//  AppDelegate.m
//  TwitterPagging
//
//  Created by 曾 宪华 on 14-6-20.
//  Copyright (c) 2014年 曾宪华 QQ群: (142557668) QQ:543413507  Gmail:xhzengAIB@gmail.com. All rights reserved.
//

#import "AppDelegate.h"

#import "XHTwitterPaggingViewer.h"
#import "XHTableViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    XHTwitterPaggingViewer *twitterPaggingViewer = [[XHTwitterPaggingViewer alloc] init];
    
    XHTableViewController *demoViewController1 = [[XHTableViewController alloc] init];
    demoViewController1.title = @"Home";
    
    XHTableViewController *tableViewController = [[XHTableViewController alloc] init];
    tableViewController.title = @"Friend";
    
    XHTableViewController *demoViewController3 = [[XHTableViewController alloc] init];
    demoViewController3.title = @"曾宪华";
    
    XHTableViewController *demoViewController4 = [[XHTableViewController alloc] init];
    demoViewController4.title = @"News1";

    
    XHTableViewController *demoViewController5 = [[XHTableViewController alloc] init];
    demoViewController5.title = @"News5";

    XHTableViewController *demoViewController6 = [[XHTableViewController alloc] init];
    demoViewController6.title = @"News5";

    XHTableViewController *demoViewController7 = [[XHTableViewController alloc] init];
    demoViewController7.title = @"News5";

    XHTableViewController *demoViewController8 = [[XHTableViewController alloc] init];
    demoViewController8.title = @"News5";

    
    twitterPaggingViewer.viewControllers = @[demoViewController1, tableViewController, demoViewController3, demoViewController4, demoViewController5, demoViewController6, demoViewController7, demoViewController8];
    
    twitterPaggingViewer.didChangedPageCompleted = ^(NSInteger cuurentPage, NSString *title) {
        NSLog(@"cuurentPage : %ld on title : %@", (long)cuurentPage, title);
    };
    
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:twitterPaggingViewer];
    
    [self.window makeKeyAndVisible];
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
