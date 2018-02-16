//
//  Product.m
//  00060xib custom View
//
//  Created by apple on 2018/2/14.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "Product.h"
@interface Product ()
//商品的图片
@property (weak, nonatomic) IBOutlet UIImageView *iconView;

//商品的名称
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation Product
#pragma mark - 初始化方法
//如果控件是通过xib或者storyboard加载出来的，那么就会执行该方法
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    if(self = [super initWithCoder:aDecoder]){
        
    }
    return self;
}

#pragma mark - 快速通过xib创建对象的方法
+(instancetype)product{
    return [[[NSBundle mainBundle] loadNibNamed:@"Product" owner:nil options:nil] firstObject];
}

#pragma mark - 设置数据的方法
-(void)setIcon :(NSString *)iconName{
    self.iconView.image = [UIImage imageNamed:iconName];
}

-(void)setTitle :(NSString *)title{
    self.titleLabel.text = title;
}



@end
