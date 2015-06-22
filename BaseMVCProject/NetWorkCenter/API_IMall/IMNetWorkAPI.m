//
//  SXNetWork.m
//  School
//
//  Created by saifing on 14/12/1.
//  Copyright (c) 2014年 西安赛斐软件科技有限公司. All rights reserved.
//

#import "IMNetWorkAPI.h"
#import "IMNetWorkRequestConfig.h"

#import "NSDictionary+Json.h"
#import "NSString+JsonObject.h"

@implementation IMNetWorkAPI


- (instancetype)init{
    self = [super init];
    return self;
}

/**
 * 首页轮播图
 **/
-(void)requestHomeAdvertiseSelectList
{
    NSString* cstrRequstUrl = [k_api_base_url stringByAppendingPathComponent:k_api_home_advertise_selectList];
    
    [self requestWithURLEncoded:cstrRequstUrl paramerters:[[NSDictionary alloc]init]];
}

/**
 * 商品列表
 */
-(void) requestProductListQuery:(NSDictionary *)paramerters
{
    NSString* cstrRequestUrl = [k_api_base_url stringByAppendingPathComponent:k_api_product_list_query];
    [self requestWithURLEncoded:cstrRequestUrl paramerters:paramerters];
}



@end