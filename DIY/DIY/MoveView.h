//
//  MoveView.h
//  DIY//
//  Created by apple on 2018/4/12.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;
@interface MoveView : UIImageView
//代理
@property (nonatomic, weak) ViewController *delegate;
@end
