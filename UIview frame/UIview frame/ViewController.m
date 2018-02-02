//
//  ViewController.m
//  UIview frame
//
//  Created by apple on 2018/2/2.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,weak) UIButton *btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//创建UIbutoon对象
    UIButton *btn= [[UIButton alloc] init];
//设置UIbutton尺寸
    btn.frame = CGRectMake(100, 100, 100, 100);
//设置背景颜色
    btn.backgroundColor = [UIColor blueColor];
//如果只修改尺寸，可以通过另一个属性修改 bounds
    //bounds的x/y传入0/0即可
    //注意：中心点不变，改变尺寸
    //btn.bounds = CGRectMake(0, 0, 120, 130);
//如果只修改位置，可以通过另一个属性修改 center
    //btn.center = CGPointMake(100, 150);
//添加控制器view
    [self.view addSubview:btn];
    self.btn = btn;
    
- (IBAction)btnClick{
    //oc语法：对象的结构体属性是不允许直接修改内部的变量
    //self.btn.frame.origin.x = 20;
    CGRect frame = self.btn.frame;
    frame.origin.x = 20;
    self.frame = frame;
    }
    
}


@end
