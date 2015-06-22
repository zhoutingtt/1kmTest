//
//  MBViewController.h
//
//  Created by saifing on 13-3-1.
//  Copyright (c) 2013年 西安赛斐软件科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IMNetWork.h"
#import "IMNetWorkAPI.h"

#define UISCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define UISCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height
#define VIEW_WIDTH  self.view.frame.size.width
#define VIEW_HEIGHT self.view.frame.size.height

@interface BaseViewController : UIViewController
<UINavigationControllerDelegate,ProtoNetwork>
{
    
}

@property(strong, nonatomic) IMNetWork* ccNetwork;
/**
 * 网络实例化
 **/
-(IMNetWorkAPI *)getNetWork;

/**
 数据请求成功后，调用该方法
 */
-(void)didRequestSuccess:(NSDictionary*)acdicInfo withUrl:(NSString*)acstrUrl;
-(void)didRequestSuccessNoData:(NSDictionary*)acdicInfo withUrl:(NSString*)acstrUrl;
-(void)didRequestFailureInvalid:(NSDictionary*)acdicInfo withUrl:(NSString*)acstrUrl;
-(void)didRequestFailure:(NSDictionary*)acdicInfo withUrl:(NSString*)acstrUrl;

@end
