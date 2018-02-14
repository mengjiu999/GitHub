//
//  ViewController.m
//  00059Xib
//
//  Created by apple on 2018/2/14.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //将新闻的View添加到控制器中
    //1.加载出新闻的View
    //1.1.加载方式一（常用）
    UIView *newsView = [[[NSBundle mainBundle] loadNibNamed:@"Empty" owner:nil options:nil] firstObject];
    
    //1.2.加载方式二（了解）
    //UINib *nib = [UINib nibWithData:@"Empty" bundle:[NSBundle mainBundle]];
    //UIView *newsView = [[nib instantiateWithOwner:nil options:nil] lastObject];
    
    //2.添加到控制器中
    [self.view addSubview:newsView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
