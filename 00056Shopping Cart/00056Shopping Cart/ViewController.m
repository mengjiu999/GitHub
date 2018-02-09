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
//@property (nonatomic,assign) NSInteger index;

//移除商品的引用
@property (weak, nonatomic) IBOutlet UIButton *removeProductbtn;

//添加商品的引用
@property (weak, nonatomic) IBOutlet UIButton *addProductbtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // self.index = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
#pragma mark-添加和移除商品
#pragma mark 添加商品

- (IBAction)addProduct:(UIButton *)sender {
    /***************************1.常量****************************/
    //1.1定义一些常量
    CGFloat width = 90;
    CGFloat height = 110;
    
    //1.2计算常量
    CGFloat hMargin = (self.shoppingCartView.frame.size.width-3 * width)/2;
    CGFloat wMargin = (self.shoppingCartView.frame.size.height - 2 * height);
    NSInteger index = self.shoppingCartView.subviews.count;
    CGFloat x = index % 3 * (width + hMargin);
    CGFloat y = index / 3 * (height + wMargin );
    
    
    /***************************2.添加商品****************************/
    //2.1添加商品的view
    UIView *productView = [[UIView alloc] init];
    productView.backgroundColor = [UIColor yellowColor];
    
    //2.2设置frame
    productView.frame = CGRectMake(x, y, width, height);
    
    
    //2.3添加到购物车
    [self.shoppingCartView addSubview:productView];
    
    //2.4添加UIimageView对象用于显示商品的图片
    UIImageView *iconView = [[UIImageView alloc] init];
    iconView.frame = CGRectMake(0, 0, width, width);
    iconView.backgroundColor = [UIColor yellowColor];
    [productView addSubview:iconView];
    
    ///2.5添加UILabel对象用于显示商品的名称
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.frame = CGRectMake(0, width, width, height - width);
    titleLabel.backgroundColor = [UIColor blackColor];
    [productView addSubview:titleLabel];
    
    
   /***************************3.判断按钮状态****************************/
    /*
    if(self.shoppingCartView.subviews.count == 6){
        sender.enabled = NO;
    }
     */
    sender.enabled = self.shoppingCartView.subviews.count != 6;
    self.removeProductbtn.enabled = YES;
}

#pragma mark 移除商品
- (IBAction)removeProduct:(UIButton *)sender {
    /***************************1.移除最后一个商品****************************/
    UIView *lastProduct = [self.shoppingCartView.subviews lastObject];
    [lastProduct removeFromSuperview];
    //self.index--;
    
    /***************************2.判断按钮状态****************************/
    /*
     if(self.shoppingCartView.subviews.count == 0){
        sender.enabled = NO;
    }
     */
    //2.1当商品数为0时不可移除
    sender.enabled = self.shoppingCartView.subviews.count;
    
    //2.2令添加商品按钮可用
    self.addProductbtn.enabled = YES;
    
}

@end
