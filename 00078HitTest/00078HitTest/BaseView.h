//
//  BaseView.h
//  00078HitTest
//
//  Created by apple on 2018/4/13.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
@class ViewController;
@protocol BasicViewDelegate <NSObject>
//定义长按手势传值方法
- (void)basicViewIsLongPressed :(UIView *)view recognizer :(UIGestureRecognizer *)recognizer;
@end

@interface BasicView : UIView 
//让view拥有一个代理
@property (nonatomic,strong) id<BasicViewDelegate> delegate;
@end

