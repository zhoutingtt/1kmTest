//
//  NetworkCheckUtil.h
//  Login_send
//
//  Created by saifing on 10-11-23.
//  Copyright 2010 西安赛斐软件科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SystemConfiguration/SCNetworkReachability.h"
#include <netinet/in.h>
#include <netdb.h>
#include <sys/socket.h>
#include <arpa/inet.h>


@interface IMNetworkCheckUtil : NSObject {
	
}

+ (NSString*)getIpAddressForHost:(NSString*) theHost;
+ (BOOL)canConnectToNetwork;
+ (BOOL)canConnectToServer:(NSString *)hostName;

@end
