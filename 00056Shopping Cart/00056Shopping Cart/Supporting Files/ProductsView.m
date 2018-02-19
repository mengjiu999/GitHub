//
//  ProductsView.m
//  00056Shopping Cart
//
//  Created by apple on 2018/2/19.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ProductsView.h"
#import "Products.h"
@interface ProductsView()

@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation ProductsView
+(instancetype)prdouctsView{
    //return  [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
    return [[[NSBundle mainBundle] loadNibNamed:@"ProductsView" owner:nil options:nil] firstObject];
}

-(void)setProducts:(Products *)products
{
    _products = products;
    
    //给子控件设置数据
    self.iconView.image = [UIImage imageNamed:products.icon];
    self.titleLabel.text = products.title;
    
}
@end
