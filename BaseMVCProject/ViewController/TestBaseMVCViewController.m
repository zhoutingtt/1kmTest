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

@interface TestBaseMVCViewController ()<UITableViewDataSource,UITableViewDelegate>
//
@property (nonatomic,strong) NSMutableArray *Products;

@end

@implementation TestBaseMVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    [[self getNetWork]requestHomeAdvertiseSelectList];
    self.Products = [[NSMutableArray alloc]init];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
    [dic setObject:@"1" forKey:@"corpid"];
    [dic setObject:@"0" forKey:@"start"];
    [dic setObject:@"10" forKey:@"limit"];
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
    return 200;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[NSstringwithFormat:@"%ld,%d",(long)indexPath.section,(long)indexPath.row] delegate:self self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//    [alert show];
}

@end
