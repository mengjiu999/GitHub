//
//  ViewController.m
//  00064UIButton
//
//  Created by apple on 2018/2/20.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"
#import "Button.h"
@interface ViewController ()
/*
 调整Button内部子控件的步骤：
     1.自定义Button
     2.调整位置
         1>重写两个方法titleRectForContentRect:和imageRectForContentRect
         2>重写layoutSubviews: 先调用super方法，之后自己调整frame
     3.如果需要设置imageView和titleLabel的属性时，在initWithFrame:方法设置
 */
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.创建按钮对象
    Button *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    //2.设置frame
    btn.frame = CGRectMake(100, 100, 175, 50);
    
    //3.设置背景颜色
    btn.backgroundColor = [UIColor yellowColor];
    
    //4.设置文字
    [btn setTitle:@"设置文字" forState:UIControlStateNormal];
    
    //5.设置图片
    [btn setImage:@"miniplayer_btn_playlist_normal" forState:UIControlStateNormal];
    
    //6.设置btn中文字和图片的背景颜色
    btn.titleLabel.backgroundColor = [UIColor blackColor];
    btn.imageView.backgroundColor = [UIColor purpleColor];

    //添加到控制器
    [self.view addSubview:btn];
    
}


@end
