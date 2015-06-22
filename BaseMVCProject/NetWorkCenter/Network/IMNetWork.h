//
//  CZNetWork.h
//  School
//
//  Created by saifing on 14-11-14.
//  Copyright (c) 2014年 西安赛斐软件科技有限公司. All rights reserved.
//

#import "IMRootNetWork.h"

@protocol ProtoNetwork <NSObject>

@optional
-(void)didRequestFinished:(AFURLConnectionOperation*)acUrlConnOperation responseObject:(id)aidResponseObj;
-(void)didFinishRequest;
-(void)didRequestFailure:(AFURLConnectionOperation*)acUrlConnOperation;
-(void)didNetworkNotAvailable;
@end
@interface IMNetWork : IMRootNetWork
-(void)requestWithURLEncoded:(NSString*)acstrURL paramerters:(NSDictionary*)acdicInfo;
-(void)requestWithFormEncoded:(NSString*)acstrURL paramerters:(NSDictionary*)acdicInfo;
//-(void)requestWithJsonEconded:(NSString*)acstrURL paramerters:(NSDictionary*)acdicInfo;
//-(void)requestWithMultiformEconded:(NSString*)acstrURL paramerters:(NSDictionary*)acdicInfo;


@property(assign, nonatomic) id<ProtoNetwork> idProtoNetwork;
@end
