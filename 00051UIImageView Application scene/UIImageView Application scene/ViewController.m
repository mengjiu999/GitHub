//
//  ViewController.m
//  UIImageView Application scene
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
    //1.创建UIImageView作为背景
    UIImageView *imageView = [[UIImageView alloc] init];
    
    //2.设置frame
    //imageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    imageView.frame = self.view.bounds;
    
    //3.设置背景颜色
    imageView.backgroundColor = [UIColor blackColor];
    
    //4.设置背景图片
    imageView.image = [UIImage imageNamed:@"1"];
    
    //5.设置内容模式
    imageView.contentMode = UIViewContentModeScaleToFill;
    
    //6.添加毛玻璃效果
    //6.1设置UIToolBar对象
    UIToolbar *toolbar = [[UIToolbar alloc] init];
    
    //6.2设置UIToolBar对象样式
    toolbar.barStyle = UIBarStyleBlack;
    
    //6.3设置frame
    toolbar.frame = imageView.bounds;
    
    //6.3将UIToolbar 添加到imageView中
    [imageView addSubview:toolbar];
    
    
    //将UIImageView添加到控制器
    [self.view addSubview:imageView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
