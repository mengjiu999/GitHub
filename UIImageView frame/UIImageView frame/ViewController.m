//
//  ViewController.m
//  UIImageView frame
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
    //1.根据图片大小设置frame的方式
    /*
    //1.1创建UIImageView对象
    UIImageView *imageView = [[UIImageView alloc] init];
    
    //1.2加载图片
    UIImage *image = [UIImage imageNamed:@"1"];
    
    //1.3设置frame
    imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    
    //1.4设置图片
    imageView.image = image;
    
    //1.5超出imageView的部分剪切
    imageView.clipsToBounds = YES;
     */
    //2.创建UIImageView的同时
    //添加到控制器中
    [self.view addSubview:imageView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
