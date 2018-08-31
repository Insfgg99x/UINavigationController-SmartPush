//
//  UINavigationController+SmartPush.h
//  SmartPush
//
//  Created by xia on 2017/11/4.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (SmartPush)


@end


@interface UIViewController (SmartPush)

/**关闭智能导航push， 默认NO （默认开启智能导航push）*/
@property(nonatomic, assign)BOOL fg_disableSmartPush;

@end
