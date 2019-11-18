//
//  UIView+Action.m
//  Test
//
//  Created by 陈午阳 on 2018/3/30.
//  Copyright © 2018年 陈午阳. All rights reserved.
//

#import "UIView+Action.h"
#import <objc/runtime.h>

@implementation UIView (Action)

//通过runtime给block属性添加set，get方法
- (void)setTapGesture:(TapGesture)tapGesture
{
    objc_setAssociatedObject(self, @"tapGesture", tapGesture, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (TapGesture)tapGesture
{
    return objc_getAssociatedObject(self, @"tapGesture");
}


- (void)iAddGesture:(TapGesture)todo
{
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
    [self addGestureRecognizer:tap];
    [self setTapGesture:todo];
}

- (void)tapAction
{
    if (self.tapGesture) {
        self.tapGesture();
    }
}


@end
