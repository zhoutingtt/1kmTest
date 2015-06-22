//
//  MBViewController.m
//
//  Created by saifing on 13-3-1.
//  Copyright (c) 2013年 西安赛斐软件科技有限公司. All rights reserved.
//

#import "BaseViewController.h"
#import "IMNetWorkAPI.h"
#import "IMNetwork.h"
#import "NSString+JsonObject.h"
#import "IMNetWorkRequestConfig.h"



@interface BaseViewController ()

@end

@implementation BaseViewController

/**
 * 网络实例化
 **/
-(IMNetWorkAPI*)getNetWork
{
    return (IMNetWorkAPI*)self.ccNetwork;
}

-(void)initNetworkModel {
    self.ccNetwork = [[IMNetWork alloc] init];
    self.ccNetwork.idProtoNetwork = self;
    
    self.ccNetwork = [[IMNetWorkAPI alloc] init];
    self.ccNetwork.idProtoNetwork = self;
}

- (void)dealloc
{
    [self onDestroy];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initNetworkModel];
}

#pragma mark - btn event
-(void)goBack
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)goRootViewController
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

#pragma mark - 查询成功，有数据
-(void)didRequestSuccess:(NSDictionary*)acdicInfo withUrl:(NSString*)acstrUrl{
    
}
#pragma mark - 查询成功，没有数据
-(void)didRequestSuccessNoData:(NSDictionary*)acdicInfo withUrl:(NSString*)acstrUrl{
    
}
#pragma mark - 业务效验失败
-(void)didRequestFailureInvalid:(NSDictionary*)acdicInfo withUrl:(NSString*)acstrUrl{
    
}
#pragma mark - 系统处理异常
-(void)didRequestFailure:(NSDictionary*)acdicInfo withUrl:(NSString*)acstrUrl{
    
}

-(void)onNetworkReqeustFinished:(AFURLConnectionOperation*)acurlConnOperation withObject:(id)aidObject {
    
}

-(void)onNetworkReqeustFailure:(AFURLConnectionOperation*)acurlConnOperation {
    
}

-(void)didRequestFinished:(AFURLConnectionOperation*)acUrlConnOperation responseObject:(id)aidResponseObj {
    NSString* cstrRequestUrl = [[acUrlConnOperation request].URL absoluteString];
    [self onNetworkReqeustFinished:acUrlConnOperation withObject:aidResponseObj];
    NSString* cstrContent = [[NSString alloc] initWithData:aidResponseObj encoding:NSUTF8StringEncoding];
    //    NSLog(@"root request return data ==== %@",cstrContent);
    NSDictionary* cdicItem = [cstrContent jsonObj];
    if (cdicItem)
    {
        //            NSNumber* cnumberMsgCode = [cdicItem valueForKeyPath:@"code"];
        //            int iMsgCode = [cnumberMsgCode intValue];
        //            if (iMsgCode == k_resp_success) {
        [self didRequestSuccess:cdicItem withUrl:cstrRequestUrl];
        //            }else if(iMsgCode == k_resp_success_no_data) {
        //                [self didRequestSuccessNoData:cdicItem withUrl:cstrRequestUrl];
        //            }else if(iMsgCode == k_resp_failure_invliad) {
        //                [self didRequestFailureInvalid:cdicItem withUrl:cstrRequestUrl];
        //            }else if(iMsgCode == k_resp_failure) {
        //                [self didRequestFailure:cdicItem withUrl:cstrRequestUrl];
        //            }
    }
}
-(void)didRequestFailure:(AFURLConnectionOperation*)acUrlConnOperation {
    //    NSString* cstrRequestUrl = [[acUrlConnOperation request].URL absoluteString];
    [self onNetworkReqeustFailure:acUrlConnOperation];
}

-(void)onDestroy {
    self.ccNetwork.idProtoNetwork = nil;
    [self.ccNetwork cancelAllRequsteOperation];
    self.ccNetwork = nil;
}
@end
