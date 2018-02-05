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
    
    //5.设置内容模式
    /*
     UIViewContentModeRedraw,重新绘制 drawRect
     //带scale比例————图片之后可能会被缩放
     UIViewContentModeScaleToFill,//默认情况，压缩或者拉伸图片，让图片可以填充整个控件
     UIViewContentModeScaleAspectFit,//宽高比例不变,fit适应，一部分填充
     IViewContentModeScaleAspectFill//fill填充
     //图片不会被拉伸和压缩
     UIViewContentModeCenter,
     UIViewContentModeTop,
     UIViewContentModeBottom,
     UIViewContentModeLeft,
     UIViewContentModeRight,
     UIViewContentModeTopLeft,
     UIViewContentModeTopRight,
     UIViewContentModeBottomLeft,
     UIViewContentModeBottomRight,
     */
    imageView.contentMode = UIViewContentModeCenter;
    
    //设置超出控件的部分剪切掉
    imageView.clipsToBounds = YES;
    
    //将对象添加到控制器View中
    [self.view addSubview:imageView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
