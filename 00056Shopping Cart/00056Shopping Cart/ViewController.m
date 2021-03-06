//
//  ViewController.m
//  00056Shopping Cart
//
//  Created by apple on 2018/2/8.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"
#import "Products.h"
#import "ProductsView.h"
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
    //1.创建商品
    ProductsView *productsView = [ProductsView productsView];
    productsView.frame = CGRectMake(x, y, width, height);
    [self.shoppingCartView addSubview:productsView];
    
    //2.设置数据
    self.products = self.products[index];
     
    
    
    
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
