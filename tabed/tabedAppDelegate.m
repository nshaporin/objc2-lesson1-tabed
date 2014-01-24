//
//  tabedAppDelegate.m
//  tabed
//
//  Created by Nikolay Shaporin on 21.01.14.
//  Copyright (c) 2014 nikolay.shaporin. All rights reserved.
//

#import "tabedAppDelegate.h"

@implementation tabedAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    //Shadow
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor colorWithRed:0.0/255.0f green:0.0/255.0f blue:0.0/255.0f alpha:0.7f];
    shadow.shadowOffset = CGSizeMake(0,0.5);
    
    //Tab Bar background color
    [[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:200.0/255.0f
                                                           green:200.0/255.0f
                                                            blue:200.0/255.0f
                                                           alpha:1.0f]];
    //Tab Bar Text color Normal
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary
                                                       dictionaryWithObjectsAndKeys:[UIColor colorWithRed:146.0/255.0f
                                                                                                    green:146.0/255.0f
                                                                                                     blue:146.0/255.0f
                                                                                                    alpha:1.0f],
                                                       NSForegroundColorAttributeName, shadow, NSShadowAttributeName,
                                                       [UIFont fontWithName:@"Helvetica-Neue" size:12], NSFontAttributeName, nil]
                                             forState:UIControlStateNormal];
    //Tab Bar Text color Highlighted
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary
                                                       dictionaryWithObjectsAndKeys:[UIColor colorWithRed:0.0/255.0f
                                                                                                    green:122.0/255.0f
                                                                                                     blue:255.0/255.0f
                                                                                                    alpha:1.0f],
                                                       NSForegroundColorAttributeName,
                                                       [UIFont fontWithName:@"Helvetica-Neue" size:12], NSFontAttributeName, nil]
                                             forState:UIControlStateHighlighted];
    
    //Navigation Bar background color
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:200.0/255.0f
                                                                  green:200.0/255.0f
                                                                   blue:200.0/255.0f
                                                                  alpha:1.0f]];

    //Navigation Bar Title color
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary
                                                          dictionaryWithObjectsAndKeys:
                                                          [UIColor colorWithRed:245.0/255.0f
                                                                          green:245.0/255.0f
                                                                           blue:245.0/255.0f
                                                                          alpha:1.0f], NSForegroundColorAttributeName, shadow, NSShadowAttributeName,
                                                          [UIFont fontWithName:@"Helvetica-Neue" size:16.0], NSFontAttributeName, nil]];
    
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
