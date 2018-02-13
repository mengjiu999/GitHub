//
//  ViewController.m
//  00058Custom control
//
//  Created by apple on 2018/2/12.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.创建商品的view
    UIView *productView = [[UIView alloc] init];
    productView.backgroundColor = [UIColor orangeColor];
    productView.frame = CGRectMake(100, 100, 70, 100);
    [self.view addSubview:productView];
    
    //2.添加子控件
    //2.1添加图片
    UIImageView *iconView = [[UIImageView  alloc] init];
    iconView.frame = CGRectMake(0, 0, 70, 70);
    iconView.backgroundColor = [UIColor yellowColor];
    [productView addSubview:iconView];
    
    //2.2添加文字
    UILabel *title = [[UILabel alloc] init];
    title.frame = CGRectMake(0, 70, 70, 30);
    title.backgroundColor = [UIColor blueColor];
    [productView addSubview:title];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
