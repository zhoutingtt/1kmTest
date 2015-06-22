//
//  CZHttpRequestOperationManger.m
//  School
//
//  Created by saifing on 14-11-14.
//  Copyright (c) 2014年 西安赛斐软件科技有限公司. All rights reserved.
//

#import "IMHttpRequestOperationManger.h"

@implementation IMHttpRequestOperationManger


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.operationQueue = [[NSOperationQueue alloc] init];
    }
    return self;
}
-(void)cancelHttpRequestURL:(NSString*)acstrReuestUrl {
    
    NSArray* carrList = [self.operationQueue operations];
    //    AFHTTPRequestOperation* chttpRequstOperation = nil;
    for (AFHTTPRequestOperation* cRequestOperation in carrList) {
        NSURL* curlRequst = [cRequestOperation request].URL;
        NSString* cstrUrlRequest = [curlRequst absoluteString];
        if ([cstrUrlRequest rangeOfString:acstrReuestUrl].location != NSNotFound) {
            [cRequestOperation cancel];
            break;
        }
    }
}
-(void)addHttpRequstOperation:(AFHTTPRequestOperation*)acHttpRequstOperation {
    
    NSArray* carrList = [self.operationQueue operations];
    BOOL abExistingInOperationQueue = false;
    for (AFURLConnectionOperation* curlConnItem in carrList) {
        NSString* cstrRequstURL = [[curlConnItem request].URL absoluteString];
        NSString* cstrRequstURLNew = [[acHttpRequstOperation request].URL absoluteString];
        if ([cstrRequstURL isEqualToString:cstrRequstURLNew]) {
            abExistingInOperationQueue = true;
        }
    }
    if (!abExistingInOperationQueue) {
        [self.operationQueue addOperation:acHttpRequstOperation];
    }
}

-(void)cancelHttpRequestOperation:(AFHTTPRequestOperation*)acHttpRequstOperation {
    
    [acHttpRequstOperation cancel];
    /*
     NSArray* carrList = [self.operationQueue operations];
     
     [carrList enumerateObjectsUsingBlock: ^(id obj, NSUInteger idx, BOOL *stop) {
     AFURLConnectionOperation* curlConnOperation = (AFURLConnectionOperation*)obj;
     NSString* cstrRequstURL = [[curlConnOperation request].URL absoluteString];
     NSString* cstrRequstURLCancel = [[acHttpRequstOperation request].URL absoluteString];
     if ([cstrRequstURL isEqualToString:cstrRequstURLCancel]) {
     *stop = true;
     [acHttpRequstOperation cancel];
     }else {
     *stop = false;
     }
     
     
     }];*/
}


-(void)cancelAllRequestOperation {
    [self.operationQueue cancelAllOperations];
}


@end
