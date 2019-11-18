//
//  UIImage+QRCodeImageView.m
//  MangoNews_iOS
//
//  Created by mac on 2018/6/21.
//  Copyright © 2018年 kuaixun. All rights reserved.
//

#import "UIImage+QRCodeImageView.h"

@implementation UIImage (QRCodeImageView)
+ (UIImage *)createImageWithString:(NSString *)string{
    
    // 1.实例化二维码滤镜
    CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    // 2.恢复滤镜的默认属性（因为滤镜可能保存上一次的属性）
    [filter setDefaults];
    //设置容错度 L M Q H分别对应 7% 15% 25% 30%
    [filter setValue:@"H" forKey:@"inputCorrectionLevel"];
    
    // 3.讲字符串转换为NSData
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    
    // 4.通过KVO设置滤镜inputMessage数据
    [filter setValue:data forKey:@"inputMessage"];
    
    // 5.通过了滤镜输出的图像
    CIImage *outputImage = [filter outputImage];
    
    // 6.因为生成的二维码模糊，所以通过createNonInterpolatedUIImageFormCIImage:outputImage来获得高清的二维码图片
    
    UIImage *image = [self getErWeiMaImageFormCIImage:outputImage withSize:200];
    
    return image;
}

+ (UIImage *)getErWeiMaImageFormCIImage:(CIImage *)image withSize:(CGFloat) size {
    CGRect extent = CGRectIntegral(image.extent);
    CGFloat scale = MIN(size/CGRectGetWidth(extent), size/CGRectGetHeight(extent));
    
    // 1.创建bitmap;
    size_t width = CGRectGetWidth(extent) * scale;
    size_t height = CGRectGetHeight(extent) * scale;
    CGColorSpaceRef cs = CGColorSpaceCreateDeviceGray();
    CGContextRef bitmapRef = CGBitmapContextCreate(nil, width, height, 8, 0, cs, (CGBitmapInfo)kCGImageAlphaNone);
    CIContext *context = [CIContext contextWithOptions:nil];
    CGImageRef bitmapImage = [context createCGImage:image fromRect:extent];
    CGContextSetInterpolationQuality(bitmapRef, kCGInterpolationNone);
    CGContextScaleCTM(bitmapRef, scale, scale);
    CGContextDrawImage(bitmapRef, extent, bitmapImage);
    
    // 2.保存bitmap到图片
    CGImageRef scaledImage = CGBitmapContextCreateImage(bitmapRef);
    CGContextRelease(bitmapRef);
    CGImageRelease(bitmapImage);
    return [UIImage imageWithCGImage:scaledImage];
}

+ (UIImage *)LX_WaterImageWithImage:(UIImage *)image waterImage:(UIImage *)waterImage waterImageRect:(CGRect)rect
{
    //1.获取图片
    
    //2.开启上下文
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0);
    //3.绘制背景图片
    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    
    //绘制水印图片到当前上下文
    [waterImage drawInRect:rect];
    
    //4.从上下文中获取新图片
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    //5.关闭图形上下文
    UIGraphicsEndImageContext();
    //返回图片
    return newImage;
    
}

+ (UIImage *)LX_WaterImageWithImage:(UIImage *)image waterImage:(UIImage *)waterImage
{
    //1/8
//    CGRect rect = CGRectMake(image.size.width/2-image.size.width/(sqrtf(2)*2*2), image.size.height/2-image.size.height/(sqrtf(2)*2*2), image.size.width/(sqrtf(2)*2), image.size.height/(sqrtf(2)*2));
    //1/16
    CGRect rect = CGRectMake(image.size.width*3/8, image.size.height*3/8, image.size.width/4, image.size.height/4);
    
//     CGRect rect = CGRectMake(image.size.width/3, image.size.height/3, image.size.width/3, image.size.height/3);
   return [UIImage LX_WaterImageWithImage:image waterImage:waterImage waterImageRect:rect];
}


@end
