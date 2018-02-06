//
//  ViewController.m
//  00053Pack Project
//
//  Created by apple on 2018/2/6.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController
/*
 加载图片常见两种方式：
 imageName;
 imageWithContentsOfFile;
 
1.如果图片是被放入Assets.xcassets
 1>打包程序，Assets.xcasset会被打包成Assets.car
 2>如果被打包成Assets.car文件，那么就拿不到其中图片的全路径
 3>只能通过imageName加载图片
 4>不能通过imageWithContentsOfFile加载图片
 
2.如果图片被拖入到项目目录中
 1>图片会被放入到mainBundle中
 2>放入到mainBundle中，才可以获得图片的全路径
 3>可以通过imageWithContentsOfFile加载
 4>也可以通过imageName加载图片
 */
- (void)viewDidLoad {
    [super viewDidLoad];

    //设置图片方式一
    // self.imageView.image = [UIImage imageNamed:@"1"];
    
    //设置图片方式二
    // self.imageView.image = [UIImage imageWithContentsOfFile:@"1" ];
    
    //获得mainBundle的途径
    // [[NSBundle mainBundle] pathForResource:@"1.png" ofType:nil];
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"png"];
    
    self.imageView.image = [UIImage imageWithContentsOfFile:imagePath];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
