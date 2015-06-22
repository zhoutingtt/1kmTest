//
//	ShopForList.m
//
//	Create by Apple on 21/6/2015
//	Copyright © 2015. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "ShopForList.h"

@interface ShopForList ()
@end
@implementation ShopForList




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[@"addtime"] isKindOfClass:[NSNull class]]){
		self.addtime = dictionary[@"addtime"];
	}	
	if(![dictionary[@"adduserid"] isKindOfClass:[NSNull class]]){
		self.adduserid = dictionary[@"adduserid"];
	}	
	if(![dictionary[@"amusementsid"] isKindOfClass:[NSNull class]]){
		self.amusementsid = [dictionary[@"amusementsid"] integerValue];
	}

	if(![dictionary[@"amusementso"] isKindOfClass:[NSNull class]]){
		self.amusementso = dictionary[@"amusementso"];
	}	
	if(![dictionary[@"buildingid"] isKindOfClass:[NSNull class]]){
		self.buildingid = dictionary[@"buildingid"];
	}	
	if(![dictionary[@"cityName"] isKindOfClass:[NSNull class]]){
		self.cityName = dictionary[@"cityName"];
	}	
	if(![dictionary[@"cityid"] isKindOfClass:[NSNull class]]){
		self.cityid = [dictionary[@"cityid"] integerValue];
	}

	if(![dictionary[@"commentcount"] isKindOfClass:[NSNull class]]){
		self.commentcount = [dictionary[@"commentcount"] integerValue];
	}

	if(![dictionary[@"consumptionperp"] isKindOfClass:[NSNull class]]){
		self.consumptionperp = dictionary[@"consumptionperp"];
	}	
	if(![dictionary[@"corpid"] isKindOfClass:[NSNull class]]){
		self.corpid = [dictionary[@"corpid"] integerValue];
	}

	if(![dictionary[@"corpname"] isKindOfClass:[NSNull class]]){
		self.corpname = dictionary[@"corpname"];
	}	
	if(![dictionary[@"corptype"] isKindOfClass:[NSNull class]]){
		self.corptype = dictionary[@"corptype"];
	}	
	if(![dictionary[@"countcom"] isKindOfClass:[NSNull class]]){
		self.countcom = dictionary[@"countcom"];
	}	
	if(![dictionary[@"countyName"] isKindOfClass:[NSNull class]]){
		self.countyName = dictionary[@"countyName"];
	}	
	if(![dictionary[@"countyid"] isKindOfClass:[NSNull class]]){
		self.countyid = [dictionary[@"countyid"] integerValue];
	}

	if(![dictionary[@"deliveryevaluation"] isKindOfClass:[NSNull class]]){
		self.deliveryevaluation = dictionary[@"deliveryevaluation"];
	}	
	if(![dictionary[@"descr"] isKindOfClass:[NSNull class]]){
		self.descr = dictionary[@"descr"];
	}	
	if(![dictionary[@"descr2"] isKindOfClass:[NSNull class]]){
		self.descr2 = dictionary[@"descr2"];
	}	
	if(![dictionary[@"descr3"] isKindOfClass:[NSNull class]]){
		self.descr3 = dictionary[@"descr3"];
	}	
	if(![dictionary[@"detailaddr"] isKindOfClass:[NSNull class]]){
		self.detailaddr = dictionary[@"detailaddr"];
	}	
	if(![dictionary[@"distance"] isKindOfClass:[NSNull class]]){
		self.distance = [dictionary[@"distance"] integerValue];
	}

	if(![dictionary[@"districtid"] isKindOfClass:[NSNull class]]){
		self.districtid = dictionary[@"districtid"];
	}	
	if(![dictionary[@"districtname"] isKindOfClass:[NSNull class]]){
		self.districtname = dictionary[@"districtname"];
	}	
	if(![dictionary[@"endtime"] isKindOfClass:[NSNull class]]){
		self.endtime = dictionary[@"endtime"];
	}	
	if(![dictionary[@"flag"] isKindOfClass:[NSNull class]]){
		self.flag = dictionary[@"flag"];
	}	
	if(![dictionary[@"floorid"] isKindOfClass:[NSNull class]]){
		self.floorid = [dictionary[@"floorid"] integerValue];
	}

	if(![dictionary[@"floorname"] isKindOfClass:[NSNull class]]){
		self.floorname = dictionary[@"floorname"];
	}	
	if(![dictionary[@"gid"] isKindOfClass:[NSNull class]]){
		self.gid = [dictionary[@"gid"] integerValue];
	}

	if(![dictionary[@"isJionShopName"] isKindOfClass:[NSNull class]]){
		self.isJionShopName = dictionary[@"isJionShopName"];
	}	
	if(![dictionary[@"isactive"] isKindOfClass:[NSNull class]]){
		self.isactive = [dictionary[@"isactive"] boolValue];
	}

	if(![dictionary[@"isjionshop"] isKindOfClass:[NSNull class]]){
		self.isjionshop = [dictionary[@"isjionshop"] boolValue];
	}

	if(![dictionary[@"isoutside"] isKindOfClass:[NSNull class]]){
		self.isoutside = [dictionary[@"isoutside"] boolValue];
	}

	if(![dictionary[@"latitude"] isKindOfClass:[NSNull class]]){
		self.latitude = [dictionary[@"latitude"] floatValue];
	}

	if(![dictionary[@"leader"] isKindOfClass:[NSNull class]]){
		self.leader = dictionary[@"leader"];
	}	
	if(![dictionary[@"leaderphone"] isKindOfClass:[NSNull class]]){
		self.leaderphone = dictionary[@"leaderphone"];
	}	
	if(![dictionary[@"limit"] isKindOfClass:[NSNull class]]){
		self.limit = dictionary[@"limit"];
	}	
	if(![dictionary[@"longitude"] isKindOfClass:[NSNull class]]){
		self.longitude = [dictionary[@"longitude"] floatValue];
	}

	if(![dictionary[@"memberid"] isKindOfClass:[NSNull class]]){
		self.memberid = dictionary[@"memberid"];
	}	
	if(![dictionary[@"organid"] isKindOfClass:[NSNull class]]){
		self.organid = [dictionary[@"organid"] integerValue];
	}

	if(![dictionary[@"pageIndex"] isKindOfClass:[NSNull class]]){
		self.pageIndex = dictionary[@"pageIndex"];
	}	
	if(![dictionary[@"parentOrganID"] isKindOfClass:[NSNull class]]){
		self.parentOrganID = dictionary[@"parentOrganID"];
	}	
	if(![dictionary[@"path1"] isKindOfClass:[NSNull class]]){
		self.path1 = dictionary[@"path1"];
	}	
	if(![dictionary[@"path2"] isKindOfClass:[NSNull class]]){
		self.path2 = dictionary[@"path2"];
	}	
	if(![dictionary[@"path3"] isKindOfClass:[NSNull class]]){
		self.path3 = dictionary[@"path3"];
	}	
	if(![dictionary[@"phoneno"] isKindOfClass:[NSNull class]]){
		self.phoneno = dictionary[@"phoneno"];
	}	
	if(![dictionary[@"procount"] isKindOfClass:[NSNull class]]){
		self.procount = dictionary[@"procount"];
	}	
	if(![dictionary[@"provinceName"] isKindOfClass:[NSNull class]]){
		self.provinceName = dictionary[@"provinceName"];
	}	
	if(![dictionary[@"provinceid"] isKindOfClass:[NSNull class]]){
		self.provinceid = [dictionary[@"provinceid"] integerValue];
	}

	if(![dictionary[@"pyshort"] isKindOfClass:[NSNull class]]){
		self.pyshort = dictionary[@"pyshort"];
	}	
	if(![dictionary[@"remark"] isKindOfClass:[NSNull class]]){
		self.remark = dictionary[@"remark"];
	}	
	if(![dictionary[@"serviceattitude"] isKindOfClass:[NSNull class]]){
		self.serviceattitude = dictionary[@"serviceattitude"];
	}	
	if(![dictionary[@"shopCategoryName"] isKindOfClass:[NSNull class]]){
		self.shopCategoryName = dictionary[@"shopCategoryName"];
	}	
	if(![dictionary[@"shopTypeName"] isKindOfClass:[NSNull class]]){
		self.shopTypeName = dictionary[@"shopTypeName"];
	}	
	if(![dictionary[@"shopcategoryid"] isKindOfClass:[NSNull class]]){
		self.shopcategoryid = [dictionary[@"shopcategoryid"] integerValue];
	}

	if(![dictionary[@"shopcategoryname"] isKindOfClass:[NSNull class]]){
		self.shopcategoryname = dictionary[@"shopcategoryname"];
	}	
	if(![dictionary[@"shopgoryname"] isKindOfClass:[NSNull class]]){
		self.shopgoryname = dictionary[@"shopgoryname"];
	}	
	if(![dictionary[@"shopid"] isKindOfClass:[NSNull class]]){
		self.shopid = [dictionary[@"shopid"] integerValue];
	}

	if(![dictionary[@"shopkindid"] isKindOfClass:[NSNull class]]){
		self.shopkindid = [dictionary[@"shopkindid"] integerValue];
	}

	if(![dictionary[@"shopkindname"] isKindOfClass:[NSNull class]]){
		self.shopkindname = dictionary[@"shopkindname"];
	}	
	if(![dictionary[@"shoplogo1"] isKindOfClass:[NSNull class]]){
		self.shoplogo1 = dictionary[@"shoplogo1"];
	}	
	if(![dictionary[@"shoplogo2"] isKindOfClass:[NSNull class]]){
		self.shoplogo2 = dictionary[@"shoplogo2"];
	}	
	if(![dictionary[@"shoplogo3"] isKindOfClass:[NSNull class]]){
		self.shoplogo3 = dictionary[@"shoplogo3"];
	}	
	if(![dictionary[@"shopname"] isKindOfClass:[NSNull class]]){
		self.shopname = dictionary[@"shopname"];
	}	
	if(![dictionary[@"shopno"] isKindOfClass:[NSNull class]]){
		self.shopno = dictionary[@"shopno"];
	}	
	if(![dictionary[@"shoproomno"] isKindOfClass:[NSNull class]]){
		self.shoproomno = dictionary[@"shoproomno"];
	}	
	if(![dictionary[@"shoptype"] isKindOfClass:[NSNull class]]){
		self.shoptype = [dictionary[@"shoptype"] integerValue];
	}

	if(![dictionary[@"start"] isKindOfClass:[NSNull class]]){
		self.start = dictionary[@"start"];
	}	
	if(![dictionary[@"starttime"] isKindOfClass:[NSNull class]]){
		self.starttime = dictionary[@"starttime"];
	}	
	if(![dictionary[@"timestamp"] isKindOfClass:[NSNull class]]){
		self.timestamp = dictionary[@"timestamp"];
	}	
	if(![dictionary[@"userid"] isKindOfClass:[NSNull class]]){
		self.userid = dictionary[@"userid"];
	}	
	if(![dictionary[@"username"] isKindOfClass:[NSNull class]]){
		self.username = dictionary[@"username"];
	}	
	if(![dictionary[@"viewcount"] isKindOfClass:[NSNull class]]){
		self.viewcount = [dictionary[@"viewcount"] integerValue];
	}

	if(![dictionary[@"workttimeend"] isKindOfClass:[NSNull class]]){
		self.workttimeend = dictionary[@"workttimeend"];
	}	
	if(![dictionary[@"workttimestart"] isKindOfClass:[NSNull class]]){
		self.workttimestart = dictionary[@"workttimestart"];
	}	
	if(![dictionary[@"zoom"] isKindOfClass:[NSNull class]]){
		self.zoom = [dictionary[@"zoom"] integerValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.addtime != nil){
		dictionary[@"addtime"] = self.addtime;
	}
	if(self.adduserid != nil){
		dictionary[@"adduserid"] = self.adduserid;
	}
	dictionary[@"amusementsid"] = @(self.amusementsid);
	if(self.amusementso != nil){
		dictionary[@"amusementso"] = self.amusementso;
	}
	if(self.buildingid != nil){
		dictionary[@"buildingid"] = self.buildingid;
	}
	if(self.cityName != nil){
		dictionary[@"cityName"] = self.cityName;
	}
	dictionary[@"cityid"] = @(self.cityid);
	dictionary[@"commentcount"] = @(self.commentcount);
	if(self.consumptionperp != nil){
		dictionary[@"consumptionperp"] = self.consumptionperp;
	}
	dictionary[@"corpid"] = @(self.corpid);
	if(self.corpname != nil){
		dictionary[@"corpname"] = self.corpname;
	}
	if(self.corptype != nil){
		dictionary[@"corptype"] = self.corptype;
	}
	if(self.countcom != nil){
		dictionary[@"countcom"] = self.countcom;
	}
	if(self.countyName != nil){
		dictionary[@"countyName"] = self.countyName;
	}
	dictionary[@"countyid"] = @(self.countyid);
	if(self.deliveryevaluation != nil){
		dictionary[@"deliveryevaluation"] = self.deliveryevaluation;
	}
	if(self.descr != nil){
		dictionary[@"descr"] = self.descr;
	}
	if(self.descr2 != nil){
		dictionary[@"descr2"] = self.descr2;
	}
	if(self.descr3 != nil){
		dictionary[@"descr3"] = self.descr3;
	}
	if(self.detailaddr != nil){
		dictionary[@"detailaddr"] = self.detailaddr;
	}
	dictionary[@"distance"] = @(self.distance);
	if(self.districtid != nil){
		dictionary[@"districtid"] = self.districtid;
	}
	if(self.districtname != nil){
		dictionary[@"districtname"] = self.districtname;
	}
	if(self.endtime != nil){
		dictionary[@"endtime"] = self.endtime;
	}
	if(self.flag != nil){
		dictionary[@"flag"] = self.flag;
	}
	dictionary[@"floorid"] = @(self.floorid);
	if(self.floorname != nil){
		dictionary[@"floorname"] = self.floorname;
	}
	dictionary[@"gid"] = @(self.gid);
	if(self.isJionShopName != nil){
		dictionary[@"isJionShopName"] = self.isJionShopName;
	}
	dictionary[@"isactive"] = @(self.isactive);
	dictionary[@"isjionshop"] = @(self.isjionshop);
	dictionary[@"isoutside"] = @(self.isoutside);
	dictionary[@"latitude"] = @(self.latitude);
	if(self.leader != nil){
		dictionary[@"leader"] = self.leader;
	}
	if(self.leaderphone != nil){
		dictionary[@"leaderphone"] = self.leaderphone;
	}
	if(self.limit != nil){
		dictionary[@"limit"] = self.limit;
	}
	dictionary[@"longitude"] = @(self.longitude);
	if(self.memberid != nil){
		dictionary[@"memberid"] = self.memberid;
	}
	dictionary[@"organid"] = @(self.organid);
	if(self.pageIndex != nil){
		dictionary[@"pageIndex"] = self.pageIndex;
	}
	if(self.parentOrganID != nil){
		dictionary[@"parentOrganID"] = self.parentOrganID;
	}
	if(self.path1 != nil){
		dictionary[@"path1"] = self.path1;
	}
	if(self.path2 != nil){
		dictionary[@"path2"] = self.path2;
	}
	if(self.path3 != nil){
		dictionary[@"path3"] = self.path3;
	}
	if(self.phoneno != nil){
		dictionary[@"phoneno"] = self.phoneno;
	}
	if(self.procount != nil){
		dictionary[@"procount"] = self.procount;
	}
	if(self.provinceName != nil){
		dictionary[@"provinceName"] = self.provinceName;
	}
	dictionary[@"provinceid"] = @(self.provinceid);
	if(self.pyshort != nil){
		dictionary[@"pyshort"] = self.pyshort;
	}
	if(self.remark != nil){
		dictionary[@"remark"] = self.remark;
	}
	if(self.serviceattitude != nil){
		dictionary[@"serviceattitude"] = self.serviceattitude;
	}
	if(self.shopCategoryName != nil){
		dictionary[@"shopCategoryName"] = self.shopCategoryName;
	}
	if(self.shopTypeName != nil){
		dictionary[@"shopTypeName"] = self.shopTypeName;
	}
	dictionary[@"shopcategoryid"] = @(self.shopcategoryid);
	if(self.shopcategoryname != nil){
		dictionary[@"shopcategoryname"] = self.shopcategoryname;
	}
	if(self.shopgoryname != nil){
		dictionary[@"shopgoryname"] = self.shopgoryname;
	}
	dictionary[@"shopid"] = @(self.shopid);
	dictionary[@"shopkindid"] = @(self.shopkindid);
	if(self.shopkindname != nil){
		dictionary[@"shopkindname"] = self.shopkindname;
	}
	if(self.shoplogo1 != nil){
		dictionary[@"shoplogo1"] = self.shoplogo1;
	}
	if(self.shoplogo2 != nil){
		dictionary[@"shoplogo2"] = self.shoplogo2;
	}
	if(self.shoplogo3 != nil){
		dictionary[@"shoplogo3"] = self.shoplogo3;
	}
	if(self.shopname != nil){
		dictionary[@"shopname"] = self.shopname;
	}
	if(self.shopno != nil){
		dictionary[@"shopno"] = self.shopno;
	}
	if(self.shoproomno != nil){
		dictionary[@"shoproomno"] = self.shoproomno;
	}
	dictionary[@"shoptype"] = @(self.shoptype);
	if(self.start != nil){
		dictionary[@"start"] = self.start;
	}
	if(self.starttime != nil){
		dictionary[@"starttime"] = self.starttime;
	}
	if(self.timestamp != nil){
		dictionary[@"timestamp"] = self.timestamp;
	}
	if(self.userid != nil){
		dictionary[@"userid"] = self.userid;
	}
	if(self.username != nil){
		dictionary[@"username"] = self.username;
	}
	dictionary[@"viewcount"] = @(self.viewcount);
	if(self.workttimeend != nil){
		dictionary[@"workttimeend"] = self.workttimeend;
	}
	if(self.workttimestart != nil){
		dictionary[@"workttimestart"] = self.workttimestart;
	}
	dictionary[@"zoom"] = @(self.zoom);
	return dictionary;

}
@end