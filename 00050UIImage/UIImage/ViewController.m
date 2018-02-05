//
//  ViewController.m
//  UIImage
//
//  Created by apple on 2018/2/5.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1.创建UIImageView对象
    UIImageView *imageView = [[UIImageView alloc] init];
    
    //2.设置frame
    imageView.frame = CGRectMake(100, 100, 100, 100);
    
    //3.设置背景颜色
    imageView.backgroundColor = [UIColor greenColor];
    
    //4.设置显示的图片
    imageView.image = [UIImage imageNamed:@"1"];
    
    //将对象添加到控制器View中
    [self.view addSubview:imageView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
