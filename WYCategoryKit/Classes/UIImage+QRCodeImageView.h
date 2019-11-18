//
//  UIImage+QRCodeImageView.h
//  MangoNews_iOS
//
//  Created by mac on 2018/6/21.
//  Copyright © 2018年 kuaixun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreImage/CoreImage.h>

@interface UIImage (QRCodeImageView)

+ (UIImage *)createImageWithString:(NSString *)string;

//给二维码图片加水印图片
+ (UIImage *)LX_WaterImageWithImage:(UIImage *)image waterImage:(UIImage *)waterImage waterImageRect:(CGRect)rect;

//给二维码图片加水印图片 默认居中 绘制范围为二维码图片的1/8
+ (UIImage *)LX_WaterImageWithImage:(UIImage *)image waterImage:(UIImage *)waterImage;
@end
