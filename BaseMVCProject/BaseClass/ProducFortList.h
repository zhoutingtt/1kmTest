//
//	ProducFortList.h
//
//	Create by Apple on 22/6/2015
//	Copyright © 2015. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface ProducFortList : NSObject

@property (nonatomic, strong) NSString * brandid;
@property (nonatomic, strong) NSString * categoryid;
@property (nonatomic, strong) NSString * categoryname;
@property (nonatomic, strong) NSString * corpid;
@property (nonatomic, strong) NSString * corpname;
@property (nonatomic, strong) NSString * descr;
@property (nonatomic, strong) NSString * descr2;
@property (nonatomic, strong) NSString * descr3;
@property (nonatomic, strong) NSString * discount;
@property (nonatomic, strong) NSString * discountid;
@property (nonatomic, strong) NSString * discountprice;
@property (nonatomic, strong) NSString * discountrate;
@property (nonatomic, strong) NSString * displayseq;
@property (nonatomic, strong) NSString * distance;
@property (nonatomic, strong) NSString * districtid;
@property (nonatomic, strong) NSString * endtime;
@property (nonatomic, strong) NSString * isactive;
@property (nonatomic, strong) NSString * iscontrolqty;
@property (nonatomic, strong) NSString * isforcorp;
@property (nonatomic, strong) NSString * ishot;
@property (nonatomic, strong) NSString * isnew;
@property (nonatomic, strong) NSString * isonsale;
@property (nonatomic, strong) NSString * ispromote;
@property (nonatomic, strong) NSString * latitude;
@property (nonatomic, strong) NSString * leftqty;
@property (nonatomic, strong) NSString * limit;
@property (nonatomic, strong) NSString * longitude;
@property (nonatomic, strong) NSString * marketprice;
@property (nonatomic, strong) NSString * measureunit;
@property (nonatomic, strong) NSString * oldprice;
@property (nonatomic, strong) NSString * pageIndex;
@property (nonatomic, strong) NSString * path1;
@property (nonatomic, strong) NSString * path2;
@property (nonatomic, strong) NSString * path3;
@property (nonatomic, strong) NSString * price;
@property (nonatomic, strong) NSString * priceorder;
@property (nonatomic, strong) NSString * productid;
@property (nonatomic, strong) NSString * productname;
@property (nonatomic, strong) NSString * productno;
@property (nonatomic, strong) NSString * productspec;
@property (nonatomic, strong) NSString * productsum;
@property (nonatomic, strong) NSString * producttagid;
@property (nonatomic, strong) NSString * producttypeid;
@property (nonatomic, strong) NSString * productvalue;
@property (nonatomic, assign) NSInteger promoteprice;
@property (nonatomic, strong) NSString * shopid;
@property (nonatomic, strong) NSString * shopname;
@property (nonatomic, strong) NSString * shopprice;
@property (nonatomic, strong) NSString * shopproductid;
@property (nonatomic, strong) NSString * showcaseid;
@property (nonatomic, strong) NSString * soldnum;
@property (nonatomic, strong) NSString * start;
@property (nonatomic, strong) NSString * starttime;
@property (nonatomic, strong) NSString * tabname;
@property (nonatomic, strong) NSString * timestamp;
@property (nonatomic, strong) NSString * venderid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end