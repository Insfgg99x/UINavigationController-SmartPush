//
//  HomeViewController.m
//  UINavigationController+SmartPush
//
//  Created by xia on 2018/9/1.
//  Copyright © 2018年 xgf. All rights reserved.
//

#import "HomeViewController.h"
#import "TestViewController.h"
#import "UINavigationController+SmartPush.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *pushBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 120, 60)];
    pushBtn.backgroundColor = [UIColor redColor];
    [pushBtn setTitle:@"push" forState:UIControlStateNormal];
    pushBtn.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [pushBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:pushBtn];
    pushBtn.center = self.view.center;
    
    [pushBtn addTarget:self action:@selector(pushAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UILabel *tip = [[UILabel alloc] initWithFrame: CGRectMake(CGRectGetMinX(pushBtn.frame) - 60, CGRectGetMaxY(pushBtn.frame) + 50, 130, 30)];
    tip.text = @"关闭SmartPush: ";
    tip.textColor = [UIColor blackColor];
    [self.view addSubview:tip];
    
    UISwitch *sw = [[UISwitch alloc] initWithFrame:CGRectMake(CGRectGetMaxX(tip.frame) + 20, CGRectGetMinY(tip.frame), 60, 30)];
    [self.view addSubview:sw];
    sw.on = self.fg_disableSmartPush;
    [sw addTarget:self action:@selector(clickSwitch:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)pushAction:(UIButton *)sender {
    sender.enabled = NO;
    [self.navigationController pushViewController:[TestViewController new] animated:YES];
    sender.enabled = YES;
}
- (void)clickSwitch:(UISwitch *)sender {
    sender.enabled = NO;
    self.fg_disableSmartPush = sender.isOn;
    sender.enabled = YES;
}

@end
