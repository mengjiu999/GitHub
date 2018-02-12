//
//  priductView.m
//  00058Custom control
//
//  Created by apple on 2018/2/12.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "priductView.h"
/*
 自定义控件：
 1.在init方法中创建并且添加子控件
 2.在layoutSubviews方法中设置子控件的frame
 */
@interface priductView ()

//商品的图片
@property (nonatomic,weak) UIImageView *iconView;
//商品的文字
@property (nonatomic,weak) UILabel *titleLabel;
@end

@implementation priductView

-(instancetype)init{
    if(self = [super init]){
        //添加图片
        UIImageView *iconView = [[UIImageView  alloc] init];
        iconView.frame = CGRectMake(0, 0, 70, 70);
        iconView.backgroundColor = [UIColor yellowColor];
        [self addSubview:iconView];
        self.iconView = iconView;
        
        //添加文字
        UILabel *titleLabel = [[UILabel alloc] init];
        titleLabel.frame = CGRectMake(0, 70, 70, 30);
        titleLabel.backgroundColor = [UIColor blueColor];
        [self addSubview:titleLabel];
    }
    return self;
}
//在layoutSubviews方法中设置frame
//系统调整商品的view的子控件时，会调用该方法
-(void)layoutSubviews{
    //注意：一定调用super
    [super layoutSubviews];
    
    //1.取出商品view的宽度和高度
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    
    //2.调整子控件的位置
    //2.1调整iconView的frame
    self.iconView.frame = CGRectMake(0, 0, width, width);
    
    //2.2调整title的frame
    self.titleLabel.frame = CGRectMake(0, width, width, height - width);
}
@end
