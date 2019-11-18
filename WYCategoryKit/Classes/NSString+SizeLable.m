//
//  NSString+SizeLable.m
//  FrameWork
//
//  Created by 陈午阳 on 2018/4/18.
//  Copyright © 2018年 陈午阳. All rights reserved.
//

#import "NSString+SizeLable.h"

@implementation NSString (SizeLable)
- (CGFloat)sizeToLableWidthWithLableHeight:(CGFloat)height withFont:(CGFloat)font
{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont boldSystemFontOfSize:font];
    CGRect rect =  [self boundingRectWithSize:CGSizeMake(MAXFLOAT,height) options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil];
    return rect.size.width;
}

- (CGFloat)sizeToLableWidthWithLableHeight:(CGFloat)height withUIFont:(UIFont *)font
{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = font;
    CGRect rect =  [self boundingRectWithSize:CGSizeMake(MAXFLOAT,height) options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil];
    return rect.size.width;
}

- (CGFloat)sizeToLableHeightWithLableWidth:(CGFloat)width withUIFont:(UIFont *)font
{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = font;
    CGRect rect =  [self boundingRectWithSize:CGSizeMake(width,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil];
    return rect.size.height;
}


- (CGFloat)sizeToLableHeightWithLableWidth:(CGFloat)width withFont:(CGFloat)font;
{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:font];
    CGRect rect = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil];
    return rect.size.height;
}

- (CGSize)getAttributionHeightWithLineSpace:(CGFloat)lineSpace font:(UIFont *)font width:(CGFloat)width; {
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    paragraphStyle.lineSpacing = lineSpace;
    paragraphStyle.paragraphSpacing = 12;
    
    NSDictionary *dict = @{NSFontAttributeName:font, NSParagraphStyleAttributeName:paragraphStyle};
    CGSize size = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                       options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                    attributes:dict
                                       context:nil].size;
    return size;
}


- (CGFloat)sizeToLableHeightWithLableWidth:(CGFloat)width withFont:(CGFloat)font withLineSpace:(CGFloat)lineSpace
{
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
    paraStyle.alignment = NSTextAlignmentLeft;
    paraStyle.lineSpacing = lineSpace;
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:font],NSParagraphStyleAttributeName:paraStyle,NSKernAttributeName:@1.5f};
    CGSize size = [self boundingRectWithSize:CGSizeMake(width,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    return size.height;
}

- (CGFloat)sizeToLableHeightWithWidth:(CGFloat)width withFont:(UIFont *)font withLineSpace:(CGFloat)lineSpace;
{
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
    paraStyle.alignment = NSTextAlignmentLeft;
    paraStyle.lineSpacing = lineSpace;
    NSDictionary *dic = @{NSFontAttributeName:font,NSParagraphStyleAttributeName:paraStyle};
    CGSize size = [self boundingRectWithSize:CGSizeMake(width,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    return size.height;
}


- (CGFloat)sizeToLableHeightWithWidth:(CGFloat)width withFont:(UIFont *)font withLineSpace:(CGFloat)lineSpace paraSpace:(CGFloat)paraSpace
{
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
    paraStyle.alignment = NSTextAlignmentLeft;
    paraStyle.lineSpacing = lineSpace;
    paraStyle.paragraphSpacing = paraSpace;
    NSDictionary *dic = @{NSFontAttributeName:font,NSParagraphStyleAttributeName:paraStyle};
    CGSize size = [self boundingRectWithSize:CGSizeMake(width,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    return size.height;
}

- (CGSize)countSizeWithMaxWidth:(CGFloat)maxWidth Font:(UIFont *)font LineSpace:(CGFloat)lineSpace
{
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
    paraStyle.alignment = NSTextAlignmentLeft;
    paraStyle.lineSpacing = lineSpace;
    NSDictionary *dic = @{NSFontAttributeName:font,NSParagraphStyleAttributeName:paraStyle};
    CGSize size = [self boundingRectWithSize:CGSizeMake(maxWidth,MAXFLOAT) options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    return size;
}

@end
