//
//  ViewController.h
//  00079SafeArea
//
//  Created by apple on 2018/4/14.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ViewControllerDelegate <NSObject>
-(void)ViewControllerReturnSelf:(UIViewController *)viewController:(CGRect)frame;
@end
@interface ViewController : UIViewController
@property (nonatomic,strong) id<ViewControllerDelegate> delegate;

@end

