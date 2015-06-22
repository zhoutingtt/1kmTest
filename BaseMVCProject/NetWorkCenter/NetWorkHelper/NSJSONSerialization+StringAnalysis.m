//
//  NSJSONSerialization+StringAnalysis.m
//  hohomall
//
//  Created by hoho on 14-5-24.
//  Copyright (c) 2014年 www.hohomall.com. All rights reserved.
//

#import "NSJSONSerialization+StringAnalysis.h"

@implementation NSJSONSerialization (StringAnalysis)
//json字符串转化为字典
+ (NSDictionary*)JSONObjectWithJsonString:(NSString *)theString
{
    NSData *data=[theString  dataUsingEncoding:NSUTF8StringEncoding];
    
    NSDictionary *resDict = [NSJSONSerialization JSONObjectWithData:data
                                                            options:NSJSONReadingAllowFragments error:nil];
    return resDict;
}
// 转化任意类型
+ (id)JSONObjectWithJsonString2:(NSString *)theString
{
    NSData *data=[theString  dataUsingEncoding:NSUTF8StringEncoding];
    
    id resDict = [NSJSONSerialization JSONObjectWithData:data
                                                            options:NSJSONReadingAllowFragments error:nil];
    return resDict;
}
// 将字典或者数组转化为JSON串
+ (NSData *)toJSONData:(id)theData{
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:theData
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&error];
    
    if (([jsonData length] != 0 )&&( error == nil)){
        return jsonData;
    }else{
        return nil;
    }
}
@end
