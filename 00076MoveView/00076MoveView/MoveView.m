//
//  MoveView.m
//  00076MoveView
//
//  Created by apple on 2018/4/11.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "MoveView.h"

@implementation MoveView
-(id)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *hitView = [super hitTest:point withEvent:event];
    
    if (hitView == self)
        
    {
        return hitView;
        
    }
    
    else
        
    {
        
        return hitView;
        
    }
    
}
@end
