//
//  ViewController.m
//  00055UIButton
//
//  Created by apple on 2018/2/7.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.创建button对象
    //UIButton *btn = [[UIButton alloc] init];
    //通常情况下使用的都是UIButtonTypeCustom类型
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    //2.设置类型
    //注意：如果想要设置button类型，必须在初始化时设置
    //button.buttonType = UIButtonTypeContactAdd;
    
    //3.设置位置和尺寸
    btn.frame = CGRectMake(100, 100, 175, 50);
    
    //4.设置背景
    btn.backgroundColor = [UIColor blueColor];
    
    //5.设置显示文字
    //注意：如果设置文字，必须告诉系统，该文字在什么状态下显示
    [btn setTitle:@"普通文字" forState:UIControlStateNormal];
    [btn setTitle:@"高亮文字" forState:UIControlStateHighlighted];
    
    //6.设置文字颜色
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    //7.设置按钮图片
    //注意：如果设置背景图片，必须告诉系统，该图片在什么状态下显示
    
    
    //添加到控制器
    [self.view addSubview:btn];
}

    //监听点击

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
