//
//  CZRootNetWork.h
//  School
//
//  Created by saifing on 14-11-14.
//  Copyright (c) 2014年 西安赛斐软件科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMHttpRequestOperationManger.h"

@interface IMRootNetWork : NSObject
{
    IMHttpRequestOperationManger* m_ct_http_req_operation_manager;
    NSMutableArray* m_cmut_arr_req_operations;
}
-(void)cancelOperaton:(AFURLConnectionOperation*)acURLConnOperation;
-(void)addHttpRequestOperation:(AFHTTPRequestOperation*)acHttpRequstOperation;
-(void)cancelAllRequsteOperation;//关闭所有请求操作
-(void)suspendRequests;//延迟请求数据
-(void)resumeRequests;//恢复请求数据
-(NSURL*)getBaseURL;
-(void)onDestroy;
@end
