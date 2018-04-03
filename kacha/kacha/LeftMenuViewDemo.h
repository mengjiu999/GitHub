//
//  LeftMenuViewDemo.h
//  Kacha
//
//  Created by apple on 2018/4/1.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol HomeMenuViewDelegate <NSObject>

-(void)LeftMenuViewClick:(NSInteger)tag;

@end

@interface LeftMenuViewDemo : UIView

@property (nonatomic ,weak)id <HomeMenuViewDelegate> customDelegate;

@end
