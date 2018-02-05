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
    //2.创建UIImageView的同时，直接设置frame
    /*
    //2.1加载图片
    UIImage *image = [UIImage imageNamed:@"1"];
    
    //2.2创建UIImageView的同时，同时初始化frame
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    //2.3设置图片
    imageView.image = image;
     */
    //3.最基本的设置frame方式
    //4.创建UIImageView的同时，同时设置图片
    //4.1.创建UIImageView的时，设置要显示的图片
    //注意：初始化时设置图片，那么图片的尺寸就是imageView的尺寸
    UIImageView *imageView = [[UIImageView alloc] initWithImage:@"1"];
    
    //4.2改变图片的位置
    imageView.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height  * 0.5);
    
    //超出imageView部分剪切
   // imageView.clipsToBounds = YES;
    
    //添加到控制器中
   // [self.view addSubview:imageView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
