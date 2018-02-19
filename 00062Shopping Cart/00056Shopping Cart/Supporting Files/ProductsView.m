//
//  ProductsView.m
//  00056Shopping Cart
//
//  Created by apple on 2018/2/19.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ProductsView.h"
@interface ProductsView()

@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation ProductsView
+(instancetype)pruductsView{
    //return  [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
    return [[[NSBundle mainBundle] loadNibNamed:@"ProductsView" owner:nil options:nil] firstObject];
}


@end
