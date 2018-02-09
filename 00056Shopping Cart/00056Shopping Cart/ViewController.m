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

//记录下标值
@property (nonatomic,assign) NSInteger index;

//移除商品的引用
@property (weak, nonatomic) IBOutlet UIButton *removeProductbtn;


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
    //1.1定义一些常量
    CGFloat width = 90;
    CGFloat height = 110;
    
    //1.2计算常量
    CGFloat hMargin = (self.shoppingCartView.frame.size.width-3 * width)/2;
    CGFloat wMargin = (self.shoppingCartView.frame.size.height - 2 * height);
    CGFloat x = self.index % 3 * (width + hMargin);
    CGFloat y = self.index / 3 * (height + wMargin );
    
    //创建商品的view
    UIView *productView = [[UIView alloc] init];
    productView.backgroundColor = [UIColor yellowColor];
    
    //设置frame
    productView.frame = CGRectMake(x, y, width, height);
    
    
    //添加到购物车
    [self.shoppingCartView addSubview:productView];
    
    self.index++;
    
    //判断按钮的状态
    if(self.index == 6){
        sender.enabled = NO;
    }
}

#pragma mark 移除商品
- (IBAction)removeProduct:(UIButton *)sender {
 
}

@end
