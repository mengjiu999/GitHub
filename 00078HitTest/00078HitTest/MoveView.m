//
//  MoveView.m
//  00078HitTest
//
//  Created by apple on 2018/4/13.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "MoveView.h"

@implementation MoveView


-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    UIView *fitView = [super hitTest:point withEvent:event];
    return fitView;
   
}
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //做UIView拖拽
    UITouch *touch = [touches anyObject];
    NSUInteger toucheNum = [[event allTouches] count];
    if ( toucheNum > 1 ) {
        return;//多个手指不执行平移
    }
    else {
        //求偏移量
        CGPoint curp = [touch locationInView:self];
        CGPoint prep = [touch previousLocationInView:self];
        CGFloat offsetx = curp.x - prep.x;
        CGFloat offsety = curp.y - prep.y;
        
        //平移
        self.transform = CGAffineTransformTranslate(self.transform, offsetx, offsety);
    }
}

    
    
@end
