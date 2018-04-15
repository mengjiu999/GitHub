//
//  ViewController.m
//  00078HitTest
//
//  Created by apple on 2018/4/13.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<BasicViewDelegate>
@property (weak ,nonatomic) UIView *moveView;
@property (weak ,nonatomic) UIViewController *viewController;
@property (weak, nonatomic) UIView *fitView;
@property (nonatomic) CGPoint touchPoint;
@property (weak, nonatomic) UIGestureRecognizer *longP;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    //添加长按手势识别器，longP方法实现图片删除
//    UILongPressGestureRecognizer *longP = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longP)];
//    [moveView addGestureRecognizer:longP];
//    CGPoint fitPoint = [longP locationInView:self.view];
//    self.longP = longP;
//    self.touchPoint = fitPoint;
//

    
}
-(void)basicViewIsLongPressed:(UIView *)view recognizer:(UIGestureRecognizer *)recognizer{
    [self promptDeletion:view];
}

- (IBAction)Click:(id)sender {
    BasicView *basicView = [[BasicView alloc] init];
    basicView.backgroundColor = [UIColor blackColor];
    basicView.frame = CGRectMake(200, 100, 100, 100);
    [self.view addSubview:basicView];
    basicView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//长按方法
//-(void)longP{
//    [self promptDeletion];

//}

//提示框
-(void)promptDeletion:(UIView *)fitView{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"是否删除该图形？" preferredStyle:UIAlertControllerStyleAlert];
    // 是
    _okAction = [UIAlertAction actionWithTitle:@"是" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {

        [fitView removeFromSuperview];

    }];
    _cancelAction =[UIAlertAction actionWithTitle:@"否" style:UIAlertActionStyleCancel handler:nil];

    [alert addAction:_okAction];
    [alert addAction:_cancelAction];

    // 弹出对话框
    [self presentViewController:alert animated:true completion:nil];

}
//-(void)viewControllerDidReturn{
//    [self.delegate viewControllerDidReturnSelf:self :self.view.frame];
//}

@end
