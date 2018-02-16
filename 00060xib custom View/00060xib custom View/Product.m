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
-(void)setIcon :(NSString *)iconName{
    self.iconView.image = [UIImage imageNamed:iconName];
}
-(void)setTitle :(NSString *)title{
    self.titleLabel.text = title;
}



@end
