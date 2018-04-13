//
//  ViewController.m
//  00078HitTest
//
//  Created by apple on 2018/4/13.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak ,nonatomic) UIView *moveView;
@property (weak ,nonatomic) UIViewController *viewController;
@property (weak, nonatomic) UIView *fitView;
@property (nonatomic) CGPoint touchPoint;
@property (weak, nonatomic) UIGestureRecognizer *longP;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MoveView *moveView = [[MoveView alloc] init];
    moveView.backgroundColor = [UIColor blackColor];
    moveView.frame = CGRectMake(200, 100, 100, 100);
    [self.view addSubview:moveView];
    
    //添加长按手势识别器，longP方法实现图片删除
    UILongPressGestureRecognizer *longP = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longP)];
    [moveView addGestureRecognizer:longP];
    CGPoint fitPoint = [longP locationInView:self.view];
    self.longP = longP;
    self.touchPoint = fitPoint;
    


}

- (IBAction)Click:(id)sender {
    MoveView *moveView = [[MoveView alloc] init];
    moveView.backgroundColor = [UIColor blackColor];
    moveView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:moveView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//长按方法
-(void)longP{
    [self promptDeletion];

}

//提示框
-(void)promptDeletion{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"是否删除该图形？" preferredStyle:UIAlertControllerStyleAlert];
    // 是
    _okAction = [UIAlertAction actionWithTitle:@"是" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {



    }];
    _cancelAction =[UIAlertAction actionWithTitle:@"否" style:UIAlertActionStyleCancel handler:nil];

    [alert addAction:_okAction];
    [alert addAction:_cancelAction];

    // 弹出对话框
    [self presentViewController:alert animated:true completion:nil];




}

@end
