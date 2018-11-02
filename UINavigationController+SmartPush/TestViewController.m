//
//  TestViewController.m
//  UINavigationController+SmartPush
//
//  Created by xia on 2018/9/1.
//  Copyright © 2018年 xgf. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *popBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 60)];
    popBtn.backgroundColor = [UIColor orangeColor];
    [popBtn setTitle:@"pop" forState:UIControlStateNormal];
    popBtn.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [popBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:popBtn];
    popBtn.center = CGPointMake(self.view.center.x, self.view.center.y - 200);
    [popBtn addTarget:self action:@selector(popAction) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *pushBtn = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetMinX(popBtn.frame), CGRectGetMaxY(popBtn.frame) + 30, 100, 60)];
    pushBtn.backgroundColor = [UIColor blueColor];
    [pushBtn setTitle:@"push" forState:UIControlStateNormal];
    pushBtn.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [pushBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:pushBtn];
    [pushBtn addTarget:self action:@selector(pushAction) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    UIButton *popToBtn = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetMinX(pushBtn.frame), CGRectGetMaxY(pushBtn.frame) + 30, 100, 60)];
    popToBtn.backgroundColor = [UIColor yellowColor];
    [popToBtn setTitle:@"popTo 3rd vc" forState:UIControlStateNormal];
    popToBtn.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [popToBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:popToBtn];
    [popToBtn addTarget:self action:@selector(popToAction) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    UIButton *popToRootBtn = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetMinX(popToBtn.frame), CGRectGetMaxY(popToBtn.frame) + 30, 100, 60)];
    popToRootBtn.backgroundColor = [UIColor blackColor];
    [popToRootBtn setTitle:@"pop to root" forState:UIControlStateNormal];
    popToRootBtn.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [popToRootBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:popToRootBtn];
    [popToRootBtn addTarget:self action:@selector(popToRootAction) forControlEvents:UIControlEventTouchUpInside];
}
- (void)popAction {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)pushAction {
    [self.navigationController pushViewController:[TestViewController new] animated:YES];
}

- (void)popToAction {
    if(self.navigationController.viewControllers.count > 4) {
        [self.navigationController popToViewController:self.navigationController.viewControllers[2] animated:YES];
    }
}

- (void)popToRootAction {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
