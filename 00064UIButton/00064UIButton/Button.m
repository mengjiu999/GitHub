//
//  Button.m
//  00064UIButton
//
//  Created by apple on 2018/2/20.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "Button.h"

@implementation Button
-(instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame]){
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.imageView.contentMode = UIViewContentModeCenter;
    }
    return self;
}

#pragma mark - 调整titleLabel和imageView的frame(方案一)
/*
-(CGRect)titleRectForContentRect:(CGRect)contentRect
{
    return CGRectMake(0, 0, 120, 50);
}
-(CGRect)imageRectForContentRect:(CGRect)contentRect
{
    return CGRectMake(120, 0, 55, 50);
}
 */

#pragma mark - 调整titleLabel和imageView的frame(方案二：重写layoutSubviews)

-(void)layoutSubviews{
    [super layoutSubviews];
    
    self.titleLabel.frame = CGRectMake(0, 0, 120, 50);
    self.imageView.frame = CGRectMake(120, 0, 55, 50);
}

@end
