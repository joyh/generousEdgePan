//
//  ZINAppDelegate.m
//  generousEdgePan
//
//  Created by Joyh on 2014. 3. 28..
//  Copyright (c) 2014년 Zininworks. All rights reserved.
//

#import "ZINAppDelegate.h"
#import "ZINRootViewController.h"

@implementation ZINAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    ZINRootViewController *rootVC = [[ZINRootViewController alloc] init];
    self.window.rootViewController = rootVC;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
