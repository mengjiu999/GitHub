//
//  MoveView.h
//  DIY
//
//  Created by apple on 2018/4/13.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
@protocol MoveViewDelegate <NSObject>
//定义长按手势传值方法
-(void)MoveViewIsLongPressed :(UIView *)view recognizer :(UIGestureRecognizer *)recognizer;
-(void)MoveViewIsTap:(UIView *)view recognizer:(UIGestureRecognizer *)recognizer:(UIImageView *)imageView;
-(void)MoveViewIsPan:(UIView *)view recognizer :(UIPanGestureRecognizer *)recognizer;
@end

@interface MoveView : UIView
//让view拥有一个代理
@property (nonatomic,strong) id<MoveViewDelegate> delegate;
@property (strong, nonatomic) UIImageView *diyImageView;
-(void)setImageView:(NSString *)name;
@end
