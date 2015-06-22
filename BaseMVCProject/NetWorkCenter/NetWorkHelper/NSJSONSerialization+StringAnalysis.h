//
//  NSJSONSerialization+StringAnalysis.h
//  hohomall
//
//  Created by hoho on 14-5-24.
//  Copyright (c) 2014年 www.hohomall.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSJSONSerialization (StringAnalysis)
//json字符串转化为字典
+ (NSDictionary*)JSONObjectWithJsonString:(NSString *)theString;
+ (id)JSONObjectWithJsonString2:(NSString *)theString;
// 将字典或者数组转化为JSON串
+ (NSData *)toJSONData:(id)theData;
@end
