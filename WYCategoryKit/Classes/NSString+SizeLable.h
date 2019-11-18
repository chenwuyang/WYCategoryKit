//
//  NSString+SizeLable.h
//  FrameWork
//
//  Created by 陈午阳 on 2018/4/18.
//  Copyright © 2018年 陈午阳. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SizeLable)
//lable高度固定，numberOfLines=1,根据文字内容计算lable宽度
- (CGFloat)sizeToLableWidthWithLableHeight:(CGFloat)height withFont:(CGFloat)font;
- (CGFloat)sizeToLableWidthWithLableHeight:(CGFloat)height withUIFont:(UIFont *)font;
- (CGFloat)sizeToLableHeightWithLableWidth:(CGFloat)width withUIFont:(UIFont *)font;

//lable宽度固定，numberOfLines=0,根据文字内容计算lable高度
- (CGFloat)sizeToLableHeightWithLableWidth:(CGFloat)width withFont:(CGFloat)font;

- (CGSize)getAttributionHeightWithLineSpace:(CGFloat)lineSpace font:(UIFont *)font width:(CGFloat)width;

//lable宽度固定，根据不同行间距获取lable高度
- (CGFloat)sizeToLableHeightWithLableWidth:(CGFloat)width withFont:(CGFloat)font withLineSpace:(CGFloat)lineSpace;

- (CGFloat)sizeToLableHeightWithWidth:(CGFloat)width withFont:(UIFont *)font withLineSpace:(CGFloat)lineSpace;

- (CGFloat)sizeToLableHeightWithWidth:(CGFloat)width withFont:(UIFont *)font withLineSpace:(CGFloat)lineSpace paraSpace:(CGFloat)paraSpace;

- (CGSize)countSizeWithMaxWidth:(CGFloat)maxWidth Font:(UIFont *)font LineSpace:(CGFloat)lineSpace;

@end
