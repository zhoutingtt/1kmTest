//
//	ProducFortList.m
//
//	Create by Apple on 22/6/2015
//	Copyright © 2015. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "ProducFortList.h"

@interface ProducFortList ()
@end
@implementation ProducFortList




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[@"brandid"] isKindOfClass:[NSNull class]]){
		self.brandid = dictionary[@"brandid"];
	}	
	if(![dictionary[@"categoryid"] isKindOfClass:[NSNull class]]){
		self.categoryid = dictionary[@"categoryid"];
	}	
	if(![dictionary[@"categoryname"] isKindOfClass:[NSNull class]]){
		self.categoryname = dictionary[@"categoryname"];
	}	
	if(![dictionary[@"corpid"] isKindOfClass:[NSNull class]]){
		self.corpid = dictionary[@"corpid"];
	}	
	if(![dictionary[@"corpname"] isKindOfClass:[NSNull class]]){
		self.corpname = dictionary[@"corpname"];
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
	if(![dictionary[@"discount"] isKindOfClass:[NSNull class]]){
		self.discount = dictionary[@"discount"];
	}	
	if(![dictionary[@"discountid"] isKindOfClass:[NSNull class]]){
		self.discountid = dictionary[@"discountid"];
	}	
	if(![dictionary[@"discountprice"] isKindOfClass:[NSNull class]]){
		self.discountprice = dictionary[@"discountprice"];
	}	
	if(![dictionary[@"discountrate"] isKindOfClass:[NSNull class]]){
		self.discountrate = dictionary[@"discountrate"];
	}	
	if(![dictionary[@"displayseq"] isKindOfClass:[NSNull class]]){
		self.displayseq = dictionary[@"displayseq"];
	}	
	if(![dictionary[@"distance"] isKindOfClass:[NSNull class]]){
		self.distance = dictionary[@"distance"];
	}	
	if(![dictionary[@"districtid"] isKindOfClass:[NSNull class]]){
		self.districtid = dictionary[@"districtid"];
	}	
	if(![dictionary[@"endtime"] isKindOfClass:[NSNull class]]){
		self.endtime = dictionary[@"endtime"];
	}	
	if(![dictionary[@"isactive"] isKindOfClass:[NSNull class]]){
		self.isactive = dictionary[@"isactive"];
	}	
	if(![dictionary[@"iscontrolqty"] isKindOfClass:[NSNull class]]){
		self.iscontrolqty = dictionary[@"iscontrolqty"];
	}	
	if(![dictionary[@"isforcorp"] isKindOfClass:[NSNull class]]){
		self.isforcorp = dictionary[@"isforcorp"];
	}	
	if(![dictionary[@"ishot"] isKindOfClass:[NSNull class]]){
		self.ishot = dictionary[@"ishot"];
	}	
	if(![dictionary[@"isnew"] isKindOfClass:[NSNull class]]){
		self.isnew = dictionary[@"isnew"];
	}	
	if(![dictionary[@"isonsale"] isKindOfClass:[NSNull class]]){
		self.isonsale = dictionary[@"isonsale"];
	}	
	if(![dictionary[@"ispromote"] isKindOfClass:[NSNull class]]){
		self.ispromote = dictionary[@"ispromote"];
	}	
	if(![dictionary[@"latitude"] isKindOfClass:[NSNull class]]){
		self.latitude = dictionary[@"latitude"];
	}	
	if(![dictionary[@"leftqty"] isKindOfClass:[NSNull class]]){
		self.leftqty = dictionary[@"leftqty"];
	}	
	if(![dictionary[@"limit"] isKindOfClass:[NSNull class]]){
		self.limit = dictionary[@"limit"];
	}	
	if(![dictionary[@"longitude"] isKindOfClass:[NSNull class]]){
		self.longitude = dictionary[@"longitude"];
	}	
	if(![dictionary[@"marketprice"] isKindOfClass:[NSNull class]]){
		self.marketprice = dictionary[@"marketprice"];
	}	
	if(![dictionary[@"measureunit"] isKindOfClass:[NSNull class]]){
		self.measureunit = dictionary[@"measureunit"];
	}	
	if(![dictionary[@"oldprice"] isKindOfClass:[NSNull class]]){
		self.oldprice = dictionary[@"oldprice"];
	}	
	if(![dictionary[@"pageIndex"] isKindOfClass:[NSNull class]]){
		self.pageIndex = dictionary[@"pageIndex"];
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
	if(![dictionary[@"price"] isKindOfClass:[NSNull class]]){
		self.price = dictionary[@"price"];
	}	
	if(![dictionary[@"priceorder"] isKindOfClass:[NSNull class]]){
		self.priceorder = dictionary[@"priceorder"];
	}	
	if(![dictionary[@"productid"] isKindOfClass:[NSNull class]]){
		self.productid = dictionary[@"productid"];
	}	
	if(![dictionary[@"productname"] isKindOfClass:[NSNull class]]){
		self.productname = dictionary[@"productname"];
	}	
	if(![dictionary[@"productno"] isKindOfClass:[NSNull class]]){
		self.productno = dictionary[@"productno"];
	}	
	if(![dictionary[@"productspec"] isKindOfClass:[NSNull class]]){
		self.productspec = dictionary[@"productspec"];
	}	
	if(![dictionary[@"productsum"] isKindOfClass:[NSNull class]]){
		self.productsum = dictionary[@"productsum"];
	}	
	if(![dictionary[@"producttagid"] isKindOfClass:[NSNull class]]){
		self.producttagid = dictionary[@"producttagid"];
	}	
	if(![dictionary[@"producttypeid"] isKindOfClass:[NSNull class]]){
		self.producttypeid = dictionary[@"producttypeid"];
	}	
	if(![dictionary[@"productvalue"] isKindOfClass:[NSNull class]]){
		self.productvalue = dictionary[@"productvalue"];
	}	
	if(![dictionary[@"promoteprice"] isKindOfClass:[NSNull class]]){
		self.promoteprice = [dictionary[@"promoteprice"] integerValue];
	}

	if(![dictionary[@"shopid"] isKindOfClass:[NSNull class]]){
		self.shopid = dictionary[@"shopid"];
	}	
	if(![dictionary[@"shopname"] isKindOfClass:[NSNull class]]){
		self.shopname = dictionary[@"shopname"];
	}	
	if(![dictionary[@"shopprice"] isKindOfClass:[NSNull class]]){
		self.shopprice = dictionary[@"shopprice"];
	}	
	if(![dictionary[@"shopproductid"] isKindOfClass:[NSNull class]]){
		self.shopproductid = dictionary[@"shopproductid"];
	}	
	if(![dictionary[@"showcaseid"] isKindOfClass:[NSNull class]]){
		self.showcaseid = dictionary[@"showcaseid"];
	}	
	if(![dictionary[@"soldnum"] isKindOfClass:[NSNull class]]){
		self.soldnum = dictionary[@"soldnum"];
	}	
	if(![dictionary[@"start"] isKindOfClass:[NSNull class]]){
		self.start = dictionary[@"start"];
	}	
	if(![dictionary[@"starttime"] isKindOfClass:[NSNull class]]){
		self.starttime = dictionary[@"starttime"];
	}	
	if(![dictionary[@"tabname"] isKindOfClass:[NSNull class]]){
		self.tabname = dictionary[@"tabname"];
	}	
	if(![dictionary[@"timestamp"] isKindOfClass:[NSNull class]]){
		self.timestamp = dictionary[@"timestamp"];
	}	
	if(![dictionary[@"venderid"] isKindOfClass:[NSNull class]]){
		self.venderid = dictionary[@"venderid"];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.brandid != nil){
		dictionary[@"brandid"] = self.brandid;
	}
	if(self.categoryid != nil){
		dictionary[@"categoryid"] = self.categoryid;
	}
	if(self.categoryname != nil){
		dictionary[@"categoryname"] = self.categoryname;
	}
	if(self.corpid != nil){
		dictionary[@"corpid"] = self.corpid;
	}
	if(self.corpname != nil){
		dictionary[@"corpname"] = self.corpname;
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
	if(self.discount != nil){
		dictionary[@"discount"] = self.discount;
	}
	if(self.discountid != nil){
		dictionary[@"discountid"] = self.discountid;
	}
	if(self.discountprice != nil){
		dictionary[@"discountprice"] = self.discountprice;
	}
	if(self.discountrate != nil){
		dictionary[@"discountrate"] = self.discountrate;
	}
	if(self.displayseq != nil){
		dictionary[@"displayseq"] = self.displayseq;
	}
	if(self.distance != nil){
		dictionary[@"distance"] = self.distance;
	}
	if(self.districtid != nil){
		dictionary[@"districtid"] = self.districtid;
	}
	if(self.endtime != nil){
		dictionary[@"endtime"] = self.endtime;
	}
	if(self.isactive != nil){
		dictionary[@"isactive"] = self.isactive;
	}
	if(self.iscontrolqty != nil){
		dictionary[@"iscontrolqty"] = self.iscontrolqty;
	}
	if(self.isforcorp != nil){
		dictionary[@"isforcorp"] = self.isforcorp;
	}
	if(self.ishot != nil){
		dictionary[@"ishot"] = self.ishot;
	}
	if(self.isnew != nil){
		dictionary[@"isnew"] = self.isnew;
	}
	if(self.isonsale != nil){
		dictionary[@"isonsale"] = self.isonsale;
	}
	if(self.ispromote != nil){
		dictionary[@"ispromote"] = self.ispromote;
	}
	if(self.latitude != nil){
		dictionary[@"latitude"] = self.latitude;
	}
	if(self.leftqty != nil){
		dictionary[@"leftqty"] = self.leftqty;
	}
	if(self.limit != nil){
		dictionary[@"limit"] = self.limit;
	}
	if(self.longitude != nil){
		dictionary[@"longitude"] = self.longitude;
	}
	if(self.marketprice != nil){
		dictionary[@"marketprice"] = self.marketprice;
	}
	if(self.measureunit != nil){
		dictionary[@"measureunit"] = self.measureunit;
	}
	if(self.oldprice != nil){
		dictionary[@"oldprice"] = self.oldprice;
	}
	if(self.pageIndex != nil){
		dictionary[@"pageIndex"] = self.pageIndex;
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
	if(self.price != nil){
		dictionary[@"price"] = self.price;
	}
	if(self.priceorder != nil){
		dictionary[@"priceorder"] = self.priceorder;
	}
	if(self.productid != nil){
		dictionary[@"productid"] = self.productid;
	}
	if(self.productname != nil){
		dictionary[@"productname"] = self.productname;
	}
	if(self.productno != nil){
		dictionary[@"productno"] = self.productno;
	}
	if(self.productspec != nil){
		dictionary[@"productspec"] = self.productspec;
	}
	if(self.productsum != nil){
		dictionary[@"productsum"] = self.productsum;
	}
	if(self.producttagid != nil){
		dictionary[@"producttagid"] = self.producttagid;
	}
	if(self.producttypeid != nil){
		dictionary[@"producttypeid"] = self.producttypeid;
	}
	if(self.productvalue != nil){
		dictionary[@"productvalue"] = self.productvalue;
	}
	dictionary[@"promoteprice"] = @(self.promoteprice);
	if(self.shopid != nil){
		dictionary[@"shopid"] = self.shopid;
	}
	if(self.shopname != nil){
		dictionary[@"shopname"] = self.shopname;
	}
	if(self.shopprice != nil){
		dictionary[@"shopprice"] = self.shopprice;
	}
	if(self.shopproductid != nil){
		dictionary[@"shopproductid"] = self.shopproductid;
	}
	if(self.showcaseid != nil){
		dictionary[@"showcaseid"] = self.showcaseid;
	}
	if(self.soldnum != nil){
		dictionary[@"soldnum"] = self.soldnum;
	}
	if(self.start != nil){
		dictionary[@"start"] = self.start;
	}
	if(self.starttime != nil){
		dictionary[@"starttime"] = self.starttime;
	}
	if(self.tabname != nil){
		dictionary[@"tabname"] = self.tabname;
	}
	if(self.timestamp != nil){
		dictionary[@"timestamp"] = self.timestamp;
	}
	if(self.venderid != nil){
		dictionary[@"venderid"] = self.venderid;
	}
	return dictionary;

}
@end