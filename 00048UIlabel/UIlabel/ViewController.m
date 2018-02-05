//
//  ViewController.m
//  UIlabel
//
//  Created by apple on 2018/2/4.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.创建UIlabel对象
    UILabel *label = [[UILabel alloc] init];
    
    //2.设置frame（位置和尺寸）
    label.frame = CGRectMake(100, 100, 100, 100);
    
    //3.设置背景
    label.backgroundColor = [UIColor blueColor];
    
    //4.设置文字
    label.text = @"Hello World Hello World Hello World Hello World Hello World";
    
    //5.设置文字颜色
    label.textColor = [UIColor blackColor];
    
    //6.设置文字行数
    label.numberOfLines = 0;
    
    //7.设置字体大小
    label.font = [UIFont systemFontOfSize:14.0];
    
    //8.设置文字加粗
    label.font = [UIFont boldSystemFontOfSize:14.0];
    
    //9.设置文字斜体
    label.font = [UIFont italicSystemFontOfSize:14.0];
    
    //10.设置文字居中
    label.textAlignment = NSTextAlignmentCenter;
    
    //11.省略号的位置，字符串或单词完整性
    label.lineBreakMode = NSLineBreakByTruncatingHead;
    
    //12.设置阴影
    //12.1设置阴影颜色
    label.shadowColor = [UIColor blueColor];
    
    //12.2设置阴影偏移量
    label.shadowOffset = CGSizeMake(2, 2);
    
    //将对象添加到控制器中
    [self.view addSubview:label];
    
}


- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
