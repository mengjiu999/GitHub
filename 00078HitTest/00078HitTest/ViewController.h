//
//  ViewController.h
//  00078HitTest
//
//  Created by apple on 2018/4/13.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MoveView.h"
@class MoveView;
@interface ViewController : UIViewController

@property (strong, nonatomic) UIAlertAction *okAction;
@property (strong, nonatomic) UIAlertAction *cancelAction;
//代理
@property (weak, nonatomic) MoveView *delegate;

@end

