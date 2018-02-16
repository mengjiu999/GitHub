//
//  ViewController.m
//  00060xib custom View
//
//  Created by apple on 2018/2/14.
//  Copyright © 2018年 YuNuo. All rights reserved.
//
/*
 xiv的使用注意:
 1.如果一个View是通过xib加载，那么创建View的时候，不能通过alloc init加载
 2.如果多处都使用View来创建该View，最好提供一个快速创建类的方法
 3.如果一个View是从xib加载出来的，那么不会执行init和initWithFrame方法
 */
#import "ViewController.h"
#import "Product.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.通过xib创建商品的View
    //Product *productView = [[[NSBundle mainBundle] loadNibNamed:@"Product" owner:nil options:nil] firstObject];
    Product *productView = [Product product];
    
    //1.1设置frame
    productView.frame = CGRectMake(100, 100, 70, 100);
    
    //2.添加到控制器
    [self.view addSubview:productView];
    
    //3.设置数据
    //方法一（tag效率低）
    /*
    //3.1.取出控件
    UIImageView *iconView = [productView viewWithTag:1000];
    UILabel *titleLabel = [productView viewWithTag:2000];
    
    //3.2.设置数据
    iconView.image = [UIImage imageNamed:@"danjianbao"];
    titleLabel.text = @"单肩包";
     */
    [productView setIcon:@"danjianbao"];
    [productView setTitle:@"单肩包"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
