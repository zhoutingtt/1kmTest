//
//  CZNetWork.m
//  School
//
//  Created by saifing on 14-11-14.
//  Copyright (c) 2014年 西安赛斐软件科技有限公司. All rights reserved.
//

#import "IMNetWork.h"
#define k_AlertViewTitle @"提示"
#define k_AlertCancel @"取消"
#define k_AlertOK @"确定"
#define k_notCanConnectToNetwork @"无法连接到网络..."
@implementation IMNetWork


//-(NSURL*)getBaseURL {
//    return [NSURL URLWithString:k_api_base_url];
//}

-(void)requestWithURLEncoded:(NSString*)acstrURL paramerters:(NSDictionary*)acdicInfo {
    
    NSMutableDictionary* cmutdicParameters = [[NSMutableDictionary alloc] initWithDictionary:acdicInfo];
    
    NSMutableURLRequest* cmutURLReq = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET" URLString:acstrURL parameters:cmutdicParameters error:nil];
    [cmutURLReq setTimeoutInterval:30.0f];
    AFHTTPRequestOperation* cRequsetOperation = [[AFHTTPRequestOperation alloc] initWithRequest:cmutURLReq];
    [cRequsetOperation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject){
        
        
        if ([self.idProtoNetwork respondsToSelector:@selector(didRequestFinished:responseObject:)]) {
            [self.idProtoNetwork didRequestFinished:operation responseObject:responseObject];
        }
        if ([self.idProtoNetwork respondsToSelector:@selector(didFinishRequest)]) {
            [self.idProtoNetwork didFinishRequest];
        }
        [m_cmut_arr_req_operations removeObject:operation];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error){
        //        DDLogInfo(@"%@", [error description]);
        NSLog(@"%@", [error description]);
        if ([self.idProtoNetwork respondsToSelector:@selector(didRequestFailure:)]) {
            [self.idProtoNetwork didRequestFailure:operation];
        }
        [m_cmut_arr_req_operations removeObject:operation];
        
    }];
    [self addHttpRequestOperation:cRequsetOperation];
}
-(void)requestWithFormEncoded:(NSString*)acstrURL paramerters:(NSDictionary*)acdicInfo {
    
    NSMutableURLRequest* cmutURLReq = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"POST" URLString:acstrURL parameters:acdicInfo error:nil];
    [cmutURLReq setTimeoutInterval:30.0f];
    AFHTTPRequestOperation* cRequsetOperation = [[AFHTTPRequestOperation alloc] initWithRequest:cmutURLReq];
    [cRequsetOperation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject){
        
        //        NSLog(@"main thread %@", [[NSThread currentThread] isMainThread] ? @"yes" : @"no");
        
        
        if ([self.idProtoNetwork respondsToSelector:@selector(didRequestFinished:responseObject:)]) {
            [self.idProtoNetwork didRequestFinished:operation responseObject:responseObject];
        }
        if ([self.idProtoNetwork respondsToSelector:@selector(didFinishRequest)]) {
            [self.idProtoNetwork didFinishRequest];
        }
        [m_cmut_arr_req_operations removeObject:operation];
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error){
        //        DDLogInfo(@"Error %@", [error description]);
        NSLog(@"Error %@", [error description]);
        if ([self.idProtoNetwork respondsToSelector:@selector(didRequestFailure:)]) {
            [self.idProtoNetwork didRequestFailure:operation];
        }
        [m_cmut_arr_req_operations removeObject:operation];
        
    }];
    [self addHttpRequestOperation:cRequsetOperation];
}
@end
