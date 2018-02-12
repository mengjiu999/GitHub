//
//  productView.m
//  00056Shopping Cart
//
//  Created by apple on 2018/2/12.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "productView.h"
#import "Products.h"
@interface productView ()
//商品的图片
@property (nonatomic,weak) UIImageView *iconView;
//商品的文字
@property (nonatomic,weak) UILabel *titleLabel;
@end

@implementation productView

-(instancetype)init{
    if(self = [super init]){
        //添加商品的图片
        UIImageView *iconView = [[UIImageView alloc] init];

        [self addSubview:iconView];
        self.iconView = iconView;
        
        //添加商品的文字
        UILabel *titleLabel = [[UILabel alloc] init];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:titleLabel];
        self.titleLabel = titleLabel;
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    //取出当前控件的长度和宽度
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    
    //设置子控件frame
    self.iconView.frame = CGRectMake(0, 0, width, width);
    self.titleLabel.frame = CGRectMake(0, width, width, height - width);
}

#pragma mark  - 实现接口方法
/*
-(void)setImage :(NSString *)iconName{
    self.iconView.image = [UIImage imageNamed:iconName];
}
-(void)setTitle :(NSString *)title{
    self.titleLabel.text = title;
}
 */

#pragma mark - 重写set方法，提供接口
-(void)setProducts :(Products *)products{
    _products = products;
    self.iconView.image = [UIImage imageNamed:products.icon];
    self.titleLabel.text = products.title;
    
    
}
@end
