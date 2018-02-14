//
//  ViewController.m
//  00060xib custom View
//
//  Created by apple on 2018/2/14.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.通过xib创建商品的View
    UIView *productView = [[[NSBundle mainBundle] loadNibNamed:@"Product" owner:nil options:nil] firstObject];
    
    //1.1设置frame
    productView.frame = CGRectMake(100, 100, 70, 100);
    
    //2.添加到控制器
    [self.view addSubview:productView ];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
