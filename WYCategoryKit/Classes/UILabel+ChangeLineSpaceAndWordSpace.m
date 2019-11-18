//
//  UILabel+ChangeLineSpaceAndWordSpace.m
//  MangoNews_iOS
//
//  Created by mac on 2018/5/30.
//  Copyright © 2018年 kuaixun. All rights reserved.
//

#import "UILabel+ChangeLineSpaceAndWordSpace.h"

@implementation UILabel (ChangeLineSpaceAndWordSpace)
+ (void)changeLineSpaceForLabel:(UILabel *)label WithSpace:(float)space {
    
    NSString *labelText = label.text;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:space];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    label.attributedText = attributedString;
    [label sizeToFit];
    
}

+ (void)changeWordSpaceForLabel:(UILabel *)label WithSpace:(float)space {
    
    NSString *labelText = label.text;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText attributes:@{NSKernAttributeName:@(space)}];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    label.attributedText = attributedString;
    [label sizeToFit];
    
}

+ (void)changeSpaceForLabel:(UILabel *)label WithLineSpace:(float)linespace ParaSpace:(float)paraSpace
{
    NSMutableParagraphStyle *pStyle = [[NSMutableParagraphStyle alloc] init];
    pStyle.lineBreakMode = NSLineBreakByCharWrapping;
    pStyle.alignment = NSTextAlignmentLeft;
    pStyle.lineSpacing = linespace; //设置行间距
    pStyle.paragraphSpacing = paraSpace;
    pStyle.hyphenationFactor = 1.0;
    pStyle.firstLineHeadIndent = 0.0;
    pStyle.paragraphSpacingBefore = 0.0;
    pStyle.headIndent = 0;
    pStyle.tailIndent = 0;
    //设置字间距 1.5f
    NSDictionary *dic = @{NSFontAttributeName:label.font, NSParagraphStyleAttributeName:pStyle,
                          };
    
    NSAttributedString *attributeStr = [[NSAttributedString alloc] initWithString:label.text attributes:dic];
    label.attributedText = attributeStr;
    
}

+ (void)changeSpaceForLabel:(UILabel *)label withLineSpace:(float)lineSpace WordSpace:(float)wordSpace {
    
    NSString *labelText = label.text;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText attributes:@{NSKernAttributeName:@(wordSpace)}];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    label.attributedText = attributedString;
    [label sizeToFit];
}

@end
