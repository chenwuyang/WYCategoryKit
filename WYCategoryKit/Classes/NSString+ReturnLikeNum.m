//
//  NSString+ReturnLikeNum.m
//  MangoNews_iOS
//
//  Created by mac on 2018/7/5.
//  Copyright © 2018年 kuaixun. All rights reserved.
//

#import "NSString+ReturnLikeNum.h"

@implementation NSString (ReturnLikeNum)
+ (NSString *)returnLikeNumWithNum:(NSInteger)num
{
    if (num<10000) {
        return [NSString stringWithFormat:@"%ld",num];
    }else if(num>10000||num==10000){
        CGFloat floatNum = (CGFloat)num;
        CGFloat floatStr = floatNum/10000.0;
        return [NSString stringWithFormat:@"%.1fW",floatStr];
    }else{
        return @"520";
    }
}
@end
