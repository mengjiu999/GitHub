//
//  MoveView.m
//  00079SafeArea
//
//  Created by apple on 2018/4/14.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "MoveView.h"
@interface MoveView () <ViewControllerDelegate>
@end
@implementation MoveView

BOOL isMove;
CGPoint legend_point;

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [super touchesBegan:touches withEvent:event];
//    isMove = NO;
//    UITouch *touch = [touches anyObject];
//    CGPoint point = [touch locationInView:self];
//    if (CGRectContainsPoint(V2.frame, point)) {
//        legend_point = [touch locationInView:V2];
//        isMove = YES;
//    }
//}
//
//-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [super touchesMoved:touches withEvent:event];
//    if (!isMove) {
//        return;
//    }
//    @autoreleasepool {
//        UITouch *touch = [touches anyObject];
//        CGPoint point = [touch locationInView:self];
//        //转化成相对的中心
//        point.x += V2.frame.size.width/2.0f - legend_point.x;
//        point.y += V2.frame.size.height/2.0f - legend_point.y;
//        //        限制范围
//        if (point.x < V2.frame.size.width / 2.0f) {
//            point.x = V2.frame.size.width / 2.0f;
//        }
//        if (point.y < V2.frame.size.height / 2.0f) {
//            point.y = V2.frame.size.height / 2.0f;
//        }
//
//        if (point.x > self.view.frame.size.width - V2.frame.size.width / 2.0f) {
//            point.x = self.view.frame.size.width - V2.frame.size.width / 2.0f;
//        }
//        if (point.y > self.view.frame.size.height - V2.frame.size.height / 2.0f) {
//            point.y = self.view.frame.size.height - V2.frame.size.height / 2.0f;
//        }
//        V2.center = point;
//
//    }
//}
//
//


@end
