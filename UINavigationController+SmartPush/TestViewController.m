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
    popBtn.center = self.view.center;
    
    [popBtn addTarget:self action:@selector(popAction) forControlEvents:UIControlEventTouchUpInside];
}
- (void)popAction {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
