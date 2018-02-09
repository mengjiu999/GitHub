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
    //productView.backgroundColor = [UIColor yellowColor];
    
    //2.2设置frame
    productView.frame = CGRectMake(x, y, width, height);
    
    
    //2.3添加到购物车
    [self.shoppingCartView addSubview:productView];
    
    //2.4添加UIimageView对象用于显示商品的图片
    UIImageView *iconView = [[UIImageView alloc] init];
    iconView.frame = CGRectMake(0, 0, width, width);
    //iconView.backgroundColor = [UIColor yellowColor];
    [productView addSubview:iconView];
    
    ///2.5添加UILabel对象用于显示商品的名称
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.frame = CGRectMake(0, width, width, height - width);
    //titleLabel.backgroundColor = [UIColor blue Color];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [productView addSubview:titleLabel];
    
    //2.6 设置展示数据
    //2.6.1.所有的数据都一样（不可取）
    /*
    iconView.image = [UIImage imageNamed:@"danjianbao"];
    titleLabel.text = @"单肩包";
     */
    
    //2.6.2.判断下标值，根据不同的下标值，设置不同的数据(不可取)
    /*
    if(index == 0){
        iconView.image = [UIImage imageNamed:@"xiekuabao"];
        titleLabel.text = @"斜挎包";
    }else if(index == 1){
        iconView.image = [UIImage imageNamed:@"xiekuabao"];
        titleLabel.text = @"斜挎包";
    }else if(index == 2){
        iconView.image = [UIImage imageNamed:@"xiekuabao"];
        titleLabel.text = @"斜挎包";
    }else if(index == 3){
        iconView.image = [UIImage imageNamed:@"xiekuabao"];
        titleLabel.text = @"斜挎包";
    }
    */
    
    //2.6.3.将数据分别放在对应的数组中，根据下标取出对应数据（不可取，图片和名称没有直接的关系）
    /*
    NSArray *icons = @[@"xiekuabao",@"danjianbao",@"shuangjianbao",@"qianbao",@"liantiaobao",@"shoutibao"];
    NSArray *names = @[@"斜挎包",@"单肩包",@"双肩包",@"钱包",@"链条包",@"手提包"];
    iconView.image = [UIImage imageNamed:icons[index]];
    titleLabel.text = names[index];
     */
    
    //2.6.4.将数据放入数组中，但是每一个数据都是一个字典，每一个字典都是一个商品
    
    
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
