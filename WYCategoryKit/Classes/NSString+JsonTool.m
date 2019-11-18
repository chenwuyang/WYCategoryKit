//
//  NSString+JsonTool.m
//  MangoNews_iOS
//
//  Created by mac on 2018/8/28.
//  Copyright © 2018年 kuaixun. All rights reserved.
//

#import "NSString+JsonTool.h"

@implementation NSString (JsonTool)
- (id)JsonStringToObject
{
    if(self)
    {
        NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
        NSError *err;
        if(jsonData)
        {
            id jsonObject= [NSJSONSerialization JSONObjectWithData:jsonData
                                                           options:NSJSONReadingMutableContainers
                                                             error:&err];
            if(jsonObject)
            {
                return jsonObject;
            }
        }
    }
    return nil;
}
@end
