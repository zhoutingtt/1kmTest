//
//  TestBaseMVCViewController.m
//  BaseMVCProject
//
//  Created by saifing_82 on 15/3/17.
//  Copyright (c) 2015年 saifing_82. All rights reserved.
//

#import "TestBaseMVCViewController.h"

#import "ProducFortList.h"
#import "ProductTableViewCell.h"
#import "UIImageView+WebCache.h"
#import "UIScrollView+MJRefresh.h"
#import "MJRefreshNormalHeader.h"
#import "MJRefreshAutoNormalFooter.h"

@interface TestBaseMVCViewController ()<UITableViewDataSource,UITableViewDelegate>
//
@property (nonatomic,strong) NSMutableArray *Products;

@end

@implementation TestBaseMVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //数组初始化只做一遍就好，昨天报错和今天报错都是因为，你把这个初始化过程加进了取数据的方法，每取一次数据，就初始化一次，是存不下数据的。！！！！
    self.Products = [[NSMutableArray alloc]init];
    
    __weak __typeof(self) weakself = self;
    //设置回调（一旦进入刷新状态就会调用这个refreshingBlock）
    self.tableView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        //如果是头刷新，咱就让start＝0，给接口传进去。
        [weakself loadNewData:0];
    }];
    [self.tableView.header beginRefreshing];
    
    self.tableView.footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
        //如果是尾刷新，就让start等于现有的商品数目，接口查询的时候就会从start的位置查询数据。
        [weakself loadNewData:self.Products.count];
    }];
    
    //马上进入刷新状态
   // [self.tableView.header beginRefreshing];

    //[self loadNewData];
}

- (void)loadNewData:(NSInteger)start{

    //    [[self getNetWork]requestHomeAdvertiseSelectList];
    
    //新建一个存参数的字典
    NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
    
    //集团id
    [dic setObject:@"1" forKey:@"corpid"];
    
    //从第几条数据开始请求
    [dic setObject:[NSString stringWithFormat:@"%ld",(long)start] forKey:@"start"];
    
    //每次请求多少条数据
    [dic setObject:@"10" forKey:@"limit"];
    
    //开始请求
    [[self getNetWork]requestProductListQuery:dic];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
-(void)didRequestSuccess:(NSDictionary*)acdicInfo withUrl:(NSString*)acstrUrl{
    //结束刷新一定要在请求到数据以后，要不然刷新就没有意义
    [self.tableView.header endRefreshing];
    [self.tableView.footer endRefreshing];
    
    //如果请求的地址里有@“start＝0”，就意味着得从头加载数据，所以咱就把存商品的数组清空一下。
    if ([acstrUrl rangeOfString:@"start=0"].location != NSNotFound) {
        [self.Products removeAllObjects];
    }
    
    //解析数据
    NSArray *dataArr = [acdicInfo objectForKey:@"data"];
    
    for (NSDictionary *dic in dataArr) {
        ProducFortList *productForList = [[ProducFortList alloc]initWithDictionary:dic];
        [self.Products addObject:productForList];
    }
    [self.tableView reloadData];
}

#pragma mark - UITableViewDataSource

/**
 * 定义有几组
 * 返回数字
 *
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

/**
 *  定义一组有几个行
 *  返回数据
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.Products.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"ProductCell";
    ProductTableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell){
        cell = [[[NSBundle mainBundle]loadNibNamed:@"ProductTableViewCell" owner:self options:nil]objectAtIndex:0];
    }
    ProducFortList *product = self.Products[indexPath.row];
    cell.ProductNo.text = product.productno;
    cell.ProductName.text = product.productname;
//    cell.ProductLogo.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://www.jxshshop.cn/icon/%@",product.path1]]]];
    [cell.ProductLogo sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://www.jxshshop.cn/icon/%@",product.path1]]];
    cell.Price.text = [NSString stringWithFormat:@"￥：%@",product.shopprice];
    cell.Type.text = [NSString stringWithFormat:@"规格：%@",product.productspec];
    cell.unit.text = [NSString stringWithFormat:@"单位：%@",product.measureunit];
    cell.shopName.text = [NSString stringWithFormat:@"店铺：%@",product.shopname];
    
//    NSURL *imageUrl = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.jxshshop.cn/icon/%@",product.path1]];
//    NSData *imgData = [NSData dataWithContentsOfURL:imageUrl];
//    UIImage *img = [UIImage imageWithData:imgData];
//    cell.ProductLogo.image = img;
//    NSLog(@"www.jxshshop.cn/icon/%@",product.path1);
    return  cell;
}


#pragma mark - UITableDelegate
/**
 *  行高
 *  返回高度
 *
 */
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 180;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[NSstringwithFormat:@"%ld,%d",(long)indexPath.section,(long)indexPath.row] delegate:self self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    //    [alert show];
}

@end
