//
//	ShopForList.h
//
//	Create by Apple on 21/6/2015
//	Copyright © 2015. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface ShopForList : NSObject

@property (nonatomic, strong) NSString * addtime;
@property (nonatomic, strong) NSString * adduserid;
@property (nonatomic, assign) NSInteger amusementsid;
@property (nonatomic, strong) NSString * amusementso;
@property (nonatomic, strong) NSString * buildingid;
@property (nonatomic, strong) NSString * cityName;
@property (nonatomic, assign) NSInteger cityid;
@property (nonatomic, assign) NSInteger commentcount;
@property (nonatomic, strong) NSString * consumptionperp;
@property (nonatomic, assign) NSInteger corpid;
@property (nonatomic, strong) NSString * corpname;
@property (nonatomic, strong) NSString * corptype;
@property (nonatomic, strong) NSString * countcom;
@property (nonatomic, strong) NSString * countyName;
@property (nonatomic, assign) NSInteger countyid;
@property (nonatomic, strong) NSString * deliveryevaluation;
@property (nonatomic, strong) NSString * descr;
@property (nonatomic, strong) NSString * descr2;
@property (nonatomic, strong) NSString * descr3;
@property (nonatomic, strong) NSString * detailaddr;
@property (nonatomic, assign) NSInteger distance;
@property (nonatomic, strong) NSString * districtid;
@property (nonatomic, strong) NSString * districtname;
@property (nonatomic, strong) NSString * endtime;
@property (nonatomic, strong) NSString * flag;
@property (nonatomic, assign) NSInteger floorid;
@property (nonatomic, strong) NSString * floorname;
@property (nonatomic, assign) NSInteger gid;
@property (nonatomic, strong) NSString * isJionShopName;
@property (nonatomic, assign) BOOL isactive;
@property (nonatomic, assign) BOOL isjionshop;
@property (nonatomic, assign) BOOL isoutside;
@property (nonatomic, assign) CGFloat latitude;
@property (nonatomic, strong) NSString * leader;
@property (nonatomic, strong) NSString * leaderphone;
@property (nonatomic, strong) NSString * limit;
@property (nonatomic, assign) CGFloat longitude;
@property (nonatomic, strong) NSString * memberid;
@property (nonatomic, assign) NSInteger organid;
@property (nonatomic, strong) NSString * pageIndex;
@property (nonatomic, strong) NSString * parentOrganID;
@property (nonatomic, strong) NSString * path1;
@property (nonatomic, strong) NSString * path2;
@property (nonatomic, strong) NSString * path3;
@property (nonatomic, strong) NSString * phoneno;
@property (nonatomic, strong) NSString * procount;
@property (nonatomic, strong) NSString * provinceName;
@property (nonatomic, assign) NSInteger provinceid;
@property (nonatomic, strong) NSString * pyshort;
@property (nonatomic, strong) NSString * remark;
@property (nonatomic, strong) NSString * serviceattitude;
@property (nonatomic, strong) NSString * shopCategoryName;
@property (nonatomic, strong) NSString * shopTypeName;
@property (nonatomic, assign) NSInteger shopcategoryid;
@property (nonatomic, strong) NSString * shopcategoryname;
@property (nonatomic, strong) NSString * shopgoryname;
@property (nonatomic, assign) NSInteger shopid;
@property (nonatomic, assign) NSInteger shopkindid;
@property (nonatomic, strong) NSString * shopkindname;
@property (nonatomic, strong) NSString * shoplogo1;
@property (nonatomic, strong) NSString * shoplogo2;
@property (nonatomic, strong) NSString * shoplogo3;
@property (nonatomic, strong) NSString * shopname;
@property (nonatomic, strong) NSString * shopno;
@property (nonatomic, strong) NSString * shoproomno;
@property (nonatomic, assign) NSInteger shoptype;
@property (nonatomic, strong) NSString * start;
@property (nonatomic, strong) NSString * starttime;
@property (nonatomic, strong) NSString * timestamp;
@property (nonatomic, strong) NSString * userid;
@property (nonatomic, strong) NSString * username;
@property (nonatomic, assign) NSInteger viewcount;
@property (nonatomic, strong) NSString * workttimeend;
@property (nonatomic, strong) NSString * workttimestart;
@property (nonatomic, assign) NSInteger zoom;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end