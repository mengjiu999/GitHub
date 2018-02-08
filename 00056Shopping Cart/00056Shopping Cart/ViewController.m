//
//  ViewController.m
//  00056Shopping Cart
//
//  Created by apple on 2018/2/8.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//购物车
@property (weak, nonatomic) IBOutlet UIView *shoppingCartView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
#pragma mark-添加和移除商品
#pragma mark 添加商品

- (IBAction)addProduct:(UIButton *)sender {
    //常量
    CGFloat width = 70;
    CGFloat height = 100;
    
    //创建商品的view
    UIView *productView = [[UIView alloc] init];
    productView.backgroundColor = [UIColor yellowColor];
    
    //设置frame
    productView.frame = CGRectMake(0, 0, width, height);
    
    
    //添加到购物车
    [self.shoppingCartView addSubview:productView];
}

#pragma mark 移除商品
- (IBAction)removeProduct:(UIButton *)sender {
}

@end
