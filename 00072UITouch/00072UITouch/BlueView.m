//
//  BlueView.m
//  00072UITouch
//
//  Created by apple on 2018/4/5.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "BlueView.h"

@implementation BlueView

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //做UIView拖拽
    UITouch *touch = [touches anyObject];
    
    //求偏移量
    CGPoint curp = [touch locationInView:self];
    CGPoint prep = [touch previousLocationInView:self];
    CGFloat offsetx = curp.x - prep.x;
    CGFloat offsety = curp.y - prep.y;
    
    //平移
    self.transform = CGAffineTransformTranslate(self.transform, offsetx, offsety);
}


@end
