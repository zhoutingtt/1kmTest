//
//  CZRootNetWork.m
//  School
//
//  Created by saifing on 14-11-14.
//  Copyright (c) 2014年 西安赛斐软件科技有限公司. All rights reserved.
//

#import "IMRootNetWork.h"
#import "IMNetWorkConfig.h"


@interface IMRootNetWork (){
}

@end
@implementation IMRootNetWork

-(NSURL*)getBaseURL {
    return [NSURL URLWithString:k_api_base_url];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        m_cmut_arr_req_operations = [[NSMutableArray alloc] init];
        m_ct_http_req_operation_manager = [[IMHttpRequestOperationManger alloc] initWithBaseURL:[self getBaseURL]];
        
    }
    return self;
}
- (void)dealloc
{
    [self onDestroy];
}
-(void)onDestroy {
    [m_ct_http_req_operation_manager cancelAllRequestOperation];
    [self cancelAllRequsteOperation];
    [m_cmut_arr_req_operations removeAllObjects];
    m_cmut_arr_req_operations = nil;
}

-(void)cancelOperaton:(AFURLConnectionOperation*)acURLConnOperation {
    [acURLConnOperation cancel];
}

-(void)addHttpRequestOperation:(AFHTTPRequestOperation*)acHttpRequstOperation {
    
    [m_cmut_arr_req_operations addObject:acHttpRequstOperation];
    [m_ct_http_req_operation_manager addHttpRequstOperation:acHttpRequstOperation];
    
}

-(void)suspendRequests {
    [[m_ct_http_req_operation_manager operationQueue] setSuspended:YES];
}
-(void)resumeRequests {
    [[m_ct_http_req_operation_manager operationQueue] setSuspended:NO];
}
-(void)cancelAllRequsteOperation {
    
    [m_cmut_arr_req_operations enumerateObjectsUsingBlock: ^(id obj, NSUInteger idx, BOOL *stop) {
        AFURLConnectionOperation* curlConnOperation = (AFURLConnectionOperation*)obj;
        [curlConnOperation cancel];
        *stop = false;
    }];
}
@end
