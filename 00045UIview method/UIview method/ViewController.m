//
//  ViewController.m
//  UIview method
//
//  Created by apple on 2018/2/2.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,weak) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//1.创建UIlabel对象
    UILabel *label = [[UILabel alloc] init];
//2.将label对象添加到控制器的View
    [self.view addSubview:label];
    NSLog(@"label = %@",self.view.subviews);
//3.设置label对象的位置和尺寸
    label.frame = CGRectMake(100, 100, 100, 100);
//4.设置对象显示的文字r
    label.text = @"我是一个label";
//5.设置背景颜色
    label.backgroundColor = [UIColor blueColor];
    self.label = label;
}
-(IBAction)yellowBtnClick{
    [self.label removeFromSuperview];
}
@end
