//
//  UITextField+SetTextFiledImage.h
//  MangoNews_iOS
//
//  Created by mac on 2018/5/30.
//  Copyright © 2018年 kuaixun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (SetTextFiledImage)
//textfiled 添加右侧图片
-(void)setRightImageWithImageName:(NSString *)imageName;

//teftfiled 添加左侧图片
-(void)setLeftImageWithImageName:(NSString *)imageName;
@end
