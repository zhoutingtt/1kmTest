//
//  NetworkCheckUtil.m
//  Login_send
//
//  Created by saifing on 10-11-23.
//  Copyright 2010 西安赛斐软件科技有限公司. All rights reserved.
//

#import "IMNetworkCheckUtil.h"


@implementation IMNetworkCheckUtil

+ (BOOL)canConnectToNetwork {
	// Create zero addy  	
	struct sockaddr_in zeroAddress;  
    bzero(&zeroAddress, sizeof(zeroAddress));  
    zeroAddress.sin_len = sizeof(zeroAddress);  
    zeroAddress.sin_family = AF_INET;  
	
     
    // Recover reachability flags  
    SCNetworkReachabilityRef defaultRouteReachability = SCNetworkReachabilityCreateWithAddress(NULL, (struct sockaddr *)&zeroAddress);  
    SCNetworkReachabilityFlags flags;  
	
    BOOL didRetrieveFlags = SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags);  
    CFRelease(defaultRouteReachability);  
	
    if (!didRetrieveFlags)  
    {  
        return NO;
    }  
    BOOL isReachable = flags & kSCNetworkFlagsReachable;  
    BOOL needsConnection = flags & kSCNetworkFlagsConnectionRequired;
	if (isReachable && !needsConnection) {
		return YES;
	} else {
		return NO;
	} 
}

+ (NSString*)getIpAddressForHost: (NSString*) theHost{
	struct hostent *host = gethostbyname([theHost UTF8String]);
	
	if(!host)
	{
		herror("resolv");
		return NULL;
	}
	
	struct in_addr **list = (struct in_addr **)host->h_addr_list;
	NSString *addressString = [NSString stringWithCString:inet_ntoa(*list[0]) encoding: [NSString defaultCStringEncoding]];
	return addressString;
}

+(BOOL) canConnectToServer:(NSString *)hostName {	
	//服务器IP地址
	NSString *hostAddress = [self getIpAddressForHost:hostName];
	
	struct hostent *host = gethostbyname([hostName UTF8String]);
	
	if (host) {
		
		struct sockaddr_in addr;
		int sockfd;
		
		// Create a socket
		sockfd = socket( AF_INET, SOCK_STREAM, 0 );
		
		addr.sin_family = AF_INET;
		addr.sin_addr.s_addr = inet_addr([hostAddress cStringUsingEncoding:NSUTF8StringEncoding]);
		addr.sin_port = htons( 8080 );	//端口号
		
		int conn = connect(sockfd, (struct sockaddr *)&addr, sizeof(addr)); 
		
		if (!conn) {			
			return YES;			
		} else {
			return NO;
		}
	} else {
		return NO;
	}
}

@end
