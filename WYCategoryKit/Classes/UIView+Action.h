//
//  UIView+Action.h
//  Test
//
//  Created by 陈午阳 on 2018/3/30.
//  Copyright © 2018年 陈午阳. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^TapGesture)(void);

@interface UIView (Action)
@property (nonatomic,copy)TapGesture tapGesture;
- (void)iAddGesture:(TapGesture)todo;
@end
