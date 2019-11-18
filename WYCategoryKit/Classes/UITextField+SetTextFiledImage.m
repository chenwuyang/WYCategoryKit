//
//  UITextField+SetTextFiledImage.m
//  MangoNews_iOS
//
//  Created by mac on 2018/5/30.
//  Copyright © 2018年 kuaixun. All rights reserved.
//

#import "UITextField+SetTextFiledImage.h"

@implementation UITextField (SetTextFiledImage)
-(void)setRightImageWithImageName:(NSString *)imageName
{
    UIImageView *rightImage = [[UIImageView alloc]init];
    rightImage.image = [UIImage imageNamed:imageName];
    rightImage.frame = CGRectMake(0, 0, 40, 40);
    rightImage.contentMode = UIViewContentModeCenter;
    self.rightView = rightImage;
    self.rightViewMode = UITextFieldViewModeAlways;
}

-(void)setLeftImageWithImageName:(NSString *)imageName
{
    UIImageView *leftImage = [[UIImageView alloc]init];
    leftImage.image = [UIImage imageNamed:imageName];
    leftImage.frame = CGRectMake(0, 0, 40, 40);
    leftImage.contentMode = UIViewContentModeCenter;
    self.leftView = leftImage;
    self.rightViewMode = UITextFieldViewModeAlways;
}
@end
