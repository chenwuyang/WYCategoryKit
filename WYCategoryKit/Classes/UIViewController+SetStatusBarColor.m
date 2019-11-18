//
//  UIViewController+SetStatusBarColor.m
//  MangoNews_iOS
//
//  Created by mac on 2018/6/2.
//  Copyright © 2018年 kuaixun. All rights reserved.
//

#import "UIViewController+SetStatusBarColor.h"

@implementation UIViewController (SetStatusBarColor)
/**
 设置状态栏颜色
 */
- (void)setStatusBarBackgroundColor:(UIColor *)color
{
    UIView *statusBar = [[[UIApplication sharedApplication] valueForKey:@"statusBarWindow"] valueForKey:@"statusBar"];
    if ([statusBar respondsToSelector:@selector(setBackgroundColor:)]) {
        statusBar.backgroundColor = color;
    }
}
@end
