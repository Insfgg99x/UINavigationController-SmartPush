//
//  AppDelegate.m
//  UINavigationController+SmartPush
//
//  Created by xia on 2018/9/1.
//  Copyright © 2018年 xgf. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "FavoriteViewController.h"
#import "MoreViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSArray *names = @[@"通讯录",@"收藏",@"更多"];
    NSArray *clses = @[@"HomeViewController",@"FavoriteViewController",@"MoreViewController"];
    NSMutableArray *array = [NSMutableArray array];
    for(int i = 0; i < names.count; i++) {
        Class cls = NSClassFromString(clses[i]);
        BaseViewController *vc = [cls new];
        vc.title = names[i];
        if (i == 0) {
            vc.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:1];
        } else if (i == 1) {
            vc.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:2];
        } else {
            vc.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMore tag:0];
        }
        UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vc];
        [array addObject:navi];
    }
    UITabBarController *tab = [UITabBarController new];
    tab.viewControllers = array;
    self.window.rootViewController = tab;
    return YES;
}


@end
