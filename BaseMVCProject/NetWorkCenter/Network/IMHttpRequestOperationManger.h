//
//  CZHttpRequestOperationManger.h
//  School
//
//  Created by saifing on 14-11-14.
//  Copyright (c) 2014年 西安赛斐软件科技有限公司. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"

@interface IMHttpRequestOperationManger : AFHTTPRequestOperationManager

-(void)addHttpRequstOperation:(AFHTTPRequestOperation*)acHttpRequstOperation;
-(void)cancelHttpRequestURL:(NSString*)acstrReuestUrl;
-(void)cancelHttpRequestOperation:(AFHTTPRequestOperation*)acHttpRequstOperation;
-(void)cancelAllRequestOperation;

@end
