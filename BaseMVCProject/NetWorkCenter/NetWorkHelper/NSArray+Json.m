//
//  NSArray+Json.m
//  hohomall
//
//  Created by joe on 28/6/14.
//  Copyright (c) 2014 www.hohomall.com. All rights reserved.
//

#import "NSArray+Json.h"

@implementation NSArray (Json)
-(NSMutableString*)jsonString {
    NSMutableString* cmutStr = nil;
    NSError* cError = nil;
    NSData* cdata = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&cError];
    if (cError) {
//        NSLog(@"can't convert to json string");
        NSLog(@"can't convert to json string");
    }else {
        cmutStr = [[NSMutableString alloc] initWithData:cdata encoding:NSUTF8StringEncoding];
    }
    return cmutStr;
}
@end
