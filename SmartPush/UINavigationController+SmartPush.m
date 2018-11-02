
//
//  UINavigationController+SmartPush.m
//  SmartPush
//
//  Created by xia on 2017/11/4.
//

#import "UINavigationController+SmartPush.h"
#import <objc/runtime.h>

@implementation UINavigationController (SmartPush)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method m1=class_getInstanceMethod([self class], @selector(pushViewController:animated:));
        Method m2=class_getInstanceMethod(self, @selector(lc_pushViewController:animated:));
        method_exchangeImplementations(m1, m2);
    });
}
//automatic hide tabbar when pushed
- (void) lc_pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSArray *controllers = self.viewControllers;
    if (controllers.count > 0) {
        UIViewController *current = controllers.firstObject;
        if(current.fg_disableSmartPush) {
            [self lc_pushViewController:viewController animated:animated];
            return;
        }
        viewController.hidesBottomBarWhenPushed = YES;
        [self lc_pushViewController:viewController animated:animated];
    } else {
        [self lc_pushViewController:viewController animated:animated];
    }
}

@end

@implementation UIViewController (SmartPush)

- (BOOL)fg_disableSmartPush {
    return [objc_getAssociatedObject(self, _cmd) boolValue];
}
- (void)setFg_disableSmartPush:(BOOL)fg_disableSmartPush {
    SEL cmd = @selector(fg_disableSmartPush);
    objc_setAssociatedObject(self, cmd, @(fg_disableSmartPush), OBJC_ASSOCIATION_ASSIGN);
}

@end
