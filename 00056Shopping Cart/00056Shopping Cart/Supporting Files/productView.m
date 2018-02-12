//
//  productView.m
//  00056Shopping Cart
//
//  Created by apple on 2018/2/12.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "productView.h"
@interface productView ()

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

@end
