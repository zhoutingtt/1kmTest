//
//  NSString+JsonObject.m
//  hohomall
//
//  Created by lester on 14-6-3.
//  Copyright (c) 2014年 www.hohomall.com. All rights reserved.
//

#import "NSString+JsonObject.h"

@implementation NSString (JsonObject)
-(id)jsonObj {
    id idJsonObject = nil;

    @autoreleasepool {
        NSData* cdataJson = [self dataUsingEncoding:NSUTF8StringEncoding];
        NSError* cError = nil;
        idJsonObject = [NSJSONSerialization JSONObjectWithData:cdataJson options:NSJSONReadingMutableContainers error:&cError];
        if (cError) {
//            DDLogInfo(@"Parsing json error %@ \n %@", self, [cError description]);
            NSLog(@"Parsing json error %@ \n %@", self, [cError description]);
            idJsonObject = nil;
        }
    }
    
    return idJsonObject;
    
}

@end
