//
//  ViewController.m
//  00056Shopping Cart
//
//  Created by apple on 2018/2/8.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"
#import "Products.h"
@interface ViewController ()
//购物车
@property (weak, nonatomic) IBOutlet UIView *shoppingCartView;

//记录下标值
//@property (nonatomic,assign) NSInteger index;

//移除商品的引用
@property (weak, nonatomic) IBOutlet UIButton *removeProductbtn;

//添加商品的引用
@property (weak, nonatomic) IBOutlet UIButton *addProductbtn;

//商品的数据
@property (nonatomic, strong) NSArray *products;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   //加载数据（不能这么写）
    /*
    self.products = @[
                      @{@"icon" : @"liantiaobao",@"title" : @"链条包"},
                      @{@"icon" : @"shoutibao",@"title" : @"手提包"},
                      @{@"icon" : @"danjianbao",@"title" : @"单肩包"},
                      @{@"icon" : @"shuangjianbao",@"title" : @"双肩包"},
                      @{@"icon" : @"xiekuabao",@"title" : @"斜挎包"},
                      @{@"icon" : @"qianbao",@"title" : @"钱包"},
                      ];
     */
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
#pragma mark - 添加和移除商品
#pragma mark - 添加商品

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
    [productView addSubview:iconView];
    
    ///2.5添加UILabel对象用于显示商品的名称
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.frame = CGRectMake(0, width, width, height - width);
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [productView addSubview:titleLabel];
    
    //2.6 设置展示数据
    /*
    if(self.products == nil){
        self.products = @[
                          @{@"icon" : @"liantiaobao",@"title" : @"链条包"},
                          @{@"icon" : @"shoutibao",@"title" : @"手提包"},
                          @{@"icon" : @"danjianbao",@"title" : @"单肩包"},
                          @{@"icon" : @"shuangjianbao",@"title" : @"双肩包"},
                          @{@"icon" : @"xiekuabao",@"title" : @"斜挎包"},
                          @{@"icon" : @"qianbao",@"title" : @"钱包"},
                          ];
    }
   */
  
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
    //NSLog(@"%@",self.products);
    //NSDictionary *productdic = self. products[index];
    Products *product = self.products[index];
    iconView.image = [UIImage imageNamed:product.icon];
    titleLabel.text = product.title ;
    
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
/*
-(void)demo
    {
        NSDictionary *productDict = self._products[2];
    }
        
#pragma mark - 懒加载

 懒加载的方法：
 1.定义成员变量
 2.重写get方法
 3.在get方法中判断，变量是否有值，直接返回，如果没有值，则加载数据
 */

-(NSArray *)products{
    if(_products == nil){
        //实际开发中，不要将数据和代码混在一起
        //从资源包中，加载products.plist文件
        //1.获取plist文件的路径
        NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"products" ofType:@"plist"];
        NSLog(@"-----%@------",plistPath);
        
        //2.读取plist文件
        _products = [NSArray arrayWithContentsOfFile:plistPath];
        
        //问题：_products数组中存放的都是字典，字典在实际开发中使用起来并不是很方便
        //3.将字典转换成模型对象
        NSMutableArray *tempArray = [NSMutableArray array];
        for (NSDictionary *dict in _products) {
            //3.1创建模型对象
            Products *product = [[Products alloc] init];
            
            //3.2给模型对象的属性赋值
            product.icon = dict[@"icon"];
            product.title = dict[@"title"];
            
            //3.3将模型对象添加到数组中
            [tempArray addObject:product];
            
        }
        _products = tempArray; 
    }
    return _products;
}

@end
