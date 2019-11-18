//
//  UIImage+ScaleToSize.h
//  MangoNews_iOS
//
//  Created by mac on 2018/6/30.
//  Copyright © 2018年 kuaixun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ScaleToSize)
+(UIImage*)image:(UIImage *)image scaleToSize:(CGSize)size;

+ (UIImage*)imageFromColor:(UIColor*)color;

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;


@end
