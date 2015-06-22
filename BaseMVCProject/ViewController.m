//
//  ViewController.m
//  BaseMVCProject
//
//  Created by saifing_82 on 15/3/17.
//  Copyright (c) 2015年 saifing_82. All rights reserved.
//

#import "ViewController.h"
#import "TestBaseMVCViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    TestBaseMVCViewController *view = [[TestBaseMVCViewController alloc]init];
    [self presentViewController:view animated:NO completion:^{
        NSLog(@"I Present a View");
    }];
}
@end
