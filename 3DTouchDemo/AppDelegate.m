//
//  AppDelegate.m
//  3DTouchDemo
//
//  Created by 庞珂路 on 16/3/10.
//  Copyright © 2016年 庞珂路. All rights reserved.
//
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
{
    NSString * title ;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}
-(void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    UIColor *changeColor = nil;
    NSDictionary *dic = shortcutItem.userInfo;
    if (dic.count>0) {
        int red = [dic[@"key1"] intValue];
        int green = [dic[@"key2"] intValue];
        int blue = [dic[@"key3"] intValue];
        int alpha = [dic[@"key4"] intValue];
        changeColor = RGBACOLOR(red, green, blue, alpha);
    }
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:shortcutItem.localizedTitle message:shortcutItem.localizedSubtitle delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"changeColor" object:changeColor];
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
