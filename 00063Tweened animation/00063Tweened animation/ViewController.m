//
//  ViewController.m
//  00063Tweened animation
//
//  Created by apple on 2018/2/19.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
}
#pragma mark - 执行动画
#pragma mark 位移动画
- (IBAction)translate{
    //1.方式一（了解，不常用）
    /*
    //1.1.开始动画
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    
    //1.2.动画执行的代码
    CGRect frame = self.blueView.frame;
    frame.origin.y += 100;
    self.blueView.frame = frame;
    
    //1.3.提交动画
    [UIView commitAnimations];
     */
   
    //2.方式二（常用）
    /*
    [UIView animateWithDuration:1.0 animations:^{
        CGRect frame = self.blueView.frame;
        frame.origin.y += 100;
        self.blueView.frame = frame;
    }];
     */
    
    /*
     [UIView animateWithDuration:1.0 animations:^{
        CGRect frame = self.blueView.frame;
        frame.origin.y += 100;
        self.blueView.frame = frame;
    } completion:^(BOOL finished) {
        self.blueView.backgroundColor = [UIColor redColor];
    }];
     */

    [UIView animateWithDuration:1.0 delay:1.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        CGRect frame = self.blueView.frame;
        frame.origin.y += 100;
        self.blueView.frame = frame;
    } completion:^(BOOL finished){
        NSLog(@"");
    }];
    
}
#pragma mark 缩放动画
- (IBAction)scale {
    [UIView animateWithDuration:1.0 delay:1.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        CGRect frame = self.blueView.frame;
        frame.size.width += 100;
        frame.size.height += 100;
        self.blueView.frame = frame;
    } completion:^(BOOL finished){
        NSLog(@"");
    }];
}
#pragma mark 透明度动画
- (IBAction)alpha {
    [UIView animateWithDuration:1.0 delay:1.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.blueView.alpha -= 0.5;
    } completion:^(BOOL finished){
        NSLog(@"");
    }];
}
@end
