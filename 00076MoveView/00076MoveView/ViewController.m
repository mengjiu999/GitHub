//
//  ViewController.m
//  00076MoveView
//
//  Created by apple on 2018/4/11.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIGestureRecognizerDelegate>
@property (weak ,nonatomic) UIView *moveView;
@property (nonatomic) CGPoint touchPoint;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MoveView *moveView = [[MoveView alloc] init];
    moveView.frame = CGRectMake(100, 100, 100, 100);
    moveView.backgroundColor = [UIColor blueColor];
    self.moveView = moveView;
    [self.view addSubview:moveView];
    
//添加点击手势识别器，sigleTappedPickerView:实现图片点击
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(sigleTappedPickerView:)];
    
    [singleTap setNumberOfTapsRequired:1];
    [moveView addGestureRecognizer:singleTap];
    singleTap.delegate = self;
    
}
-(void)sigleTappedPickerView:(UIGestureRecognizer *)sender
{
    
    //取得所点击的点的坐标
    CGPoint point = [sender locationInView:self.view];
    self.touchPoint = point;
    NSLog(@"%@",NSStringFromCGPoint(self.touchPoint));
    [self promptDeletion];
    
}
//提示框
-(void)promptDeletion{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"是否删除该图形？" preferredStyle:UIAlertControllerStyleAlert];
    // 是
    _okAction = [UIAlertAction actionWithTitle:@"是" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {
//        UIView *fitView = [self.moveView hitTest:self.touchPoint withEvent:nil];
//        [fitView removeFromSuperview];
        [self.moveView removeFromSuperview];
        
        
        
    }];
    _cancelAction =[UIAlertAction actionWithTitle:@"否" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:_okAction];
    [alert addAction:_cancelAction];
    
    // 弹出对话框
    [self presentViewController:alert animated:true completion:nil];
    
    
}



////什么时候调用:当事件传递给当前View时就会调用这个方法
//-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
//    // 判断自己能否接收事件
//
//    if(self.moveView.userInteractionEnabled == NO || self.moveView.hidden == YES || self.moveView.alpha <= 0.01){
//        return nil;
//    }
//    // 触摸点在不在自己身上
//    if ([self pointInside:point withEvent:event] == NO) {
//        return nil;
//    }
//    // 从后往前遍历自己的子控件(重复前面的两个步骤)
//    int count = (int)self.view.subviews.count;
//    for (int i = count -1; i >= 0; i--) {
//        UIView *childV = self.view.subviews[i];
//        // point必须得要跟childV相同的坐标系.
//        // 把point转换childV坐标系上面的点
//        CGPoint childP = [self.moveView convertPoint:point toView:childV];
//        UIView *fitView = [childV hitTest:childP withEvent:event];
//        if (fitView) {
//            return fitView;
//        }
//    }
//    // 如果没有符合条件的子控件，那么就自己最适合处理
//    return nil;
//
//}

-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
