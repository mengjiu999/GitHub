//
//  BaseView.m
//  00078HitTest
//
//  Created by apple on 2018/4/13.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "BaseView.h"
@interface BasicView ()<ViewControllerDelegate>
@property (strong, nonatomic) UIViewController *V2;
@end
@implementation BasicView
//重写init方法
- (instancetype)init{
    if(self = [super init]){
        //定义手势
        UILongPressGestureRecognizer *gesture =[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPress:)];
        //添加手势
        [self addGestureRecognizer:gesture];
    }
    return self;
}


//手势监听
- (void)longPress :(UIGestureRecognizer *)recognizer{
    [self.delegate basicViewIsLongPressed :self recognizer :recognizer];
}
//-(void)viewControllerDidReturnSelf:(UIViewController *)selfController :(CGRect)frame{
//    self.V2 = selfController;
//}
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

//
//-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
//    UIView *fitView = [super hitTest:point withEvent:event];
//    return fitView;
//
//}
//-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//
//    //做UIView拖拽
//    UITouch *touch = [touches anyObject];
//    NSUInteger toucheNum = [[event allTouches] count];
//    if ( toucheNum > 1 ) {
//        return;//多个手指不执行平移
//    }
//    else {
//
//            //求偏移量
//            CGPoint curp = [touch locationInView:self];
//            CGPoint prep = [touch previousLocationInView:self];
//            CGFloat offsetx = curp.x - prep.x;
//            CGFloat offsety = curp.y - prep.y;
//            //平移
//            self.transform = CGAffineTransformTranslate(self.transform, offsetx, offsety);
//
//
//            }
//}
//BOOL isMove;
//CGPoint legend_point;
//
//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [super touchesBegan:touches withEvent:event];
//    isMove = NO;
//    UITouch *touch = [touches anyObject];
//    CGPoint point = [touch locationInView:self.drawView];
//    if (CGRectContainsPoint(self.frame, point)) {
//        legend_point = [touch locationInView:self.drawView];
//        isMove = YES;
//    }
//}
//
//-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [super touchesMoved:touches withEvent:event];
//    if (!isMove) {
//        return;
//    }
//    NSUInteger toucheNum = [[event allTouches] count];
//    if ( toucheNum > 1 ) {
//        //        return;//多个手指不执行平移
//        //    }
//
//        @autoreleasepool {
//            UITouch *touch = [touches anyObject];
//            CGPoint point = [touch locationInView:self];
//            //转化成相对的中心
//            point.x += self.frame.size.width/2.0f - legend_point.x;
//            point.y += self.frame.size.height/2.0f - legend_point.y;
//            //        限制范围
//            if (point.x < self.frame.size.width / 2.0f) {
//                point.x = self.frame.size.width / 2.0f;
//            }
//            if (point.y < self.frame.size.height / 2.0f) {
//                point.y = self.frame.size.height / 2.0f;
//            }
//
//            if (point.x > self.frame.size.width - self.frame.size.width / 2.0f) {
//                point.x = self.frame.size.width - self.frame.size.width / 2.0f;
//            }
//            if (point.y > self.frame.size.height - self.frame.size.height / 2.0f) {
//                point.y = self.frame.size.height - self.frame.size.height / 2.0f;
//            }
//            self.drawView.center = point;
//
//        }
//    }

@end
