//
//  ViewController.m
//  UIview attribute
//
//  Created by apple on 2018/2/2.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueView;
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation ViewController
//当控制器的view已经加载好时，系统会调用该方法
//通常情况下在该方法，做一些初始化操作（添加子控件，初始化一些数据）
- (void)viewDidLoad {
    [super viewDidLoad];
    //取出btn父控件
    NSLog(@"btn.superview:%@",self.btn.superview);
    NSLog(@"blueView:%@",self.blueView);
}

//当系统收到内存警告时会调用该方法，告知内存出现了警告
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
