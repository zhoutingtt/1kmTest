//
//  ProductTableViewCell.h
//  BaseMVCProject
//
//  Created by Apple on 15/6/22.
//  Copyright (c) 2015年 saifing_82. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *ProductNo;
@property (weak, nonatomic) IBOutlet UILabel *ProductName;
@property (weak, nonatomic) IBOutlet UIImageView *ProductLogo;
@property (weak, nonatomic) IBOutlet UILabel *Price;
@property (weak, nonatomic) IBOutlet UILabel *Type;
@property (weak, nonatomic) IBOutlet UILabel *unit;
@property (weak, nonatomic) IBOutlet UILabel *shopName;

@end
