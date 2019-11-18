//
//  UILabel+ChangeLineSpaceAndWordSpace.h
//  MangoNews_iOS
//
//  Created by mac on 2018/5/30.
//  Copyright © 2018年 kuaixun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ChangeLineSpaceAndWordSpace)
/**
 *  改变行间距
 */
+ (void)changeLineSpaceForLabel:(UILabel *)label WithSpace:(float)space;

/**
 *  改变字间距
 */
+ (void)changeWordSpaceForLabel:(UILabel *)label WithSpace:(float)space;

/**
 * 改变段落间距 行间距
 **/
+ (void)changeSpaceForLabel:(UILabel *)label WithLineSpace:(float)linespace ParaSpace:(float)paraSpace;

/**
 *  改变行间距和字间距
 */
+ (void)changeSpaceForLabel:(UILabel *)label withLineSpace:(float)lineSpace WordSpace:(float)wordSpace;

@end
