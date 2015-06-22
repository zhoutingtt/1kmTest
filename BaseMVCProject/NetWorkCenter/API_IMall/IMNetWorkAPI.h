//
//  SXNetWork.h
//  School
//
//  Created by saifing on 14/12/1.
//  Copyright (c) 2014年 西安赛斐软件科技有限公司. All rights reserved.
//

#import "IMNetWork.h"
#import "IMNetWorkRequestConfig.h"

@interface IMNetWorkAPI : IMNetWork


/**
 * 首页轮播图
 **/
-(void)requestHomeAdvertiseSelectList;


/*
 * 商品列表
 */
-(void)requestProductListQuery:(NSDictionary *) paramerters;

@end
