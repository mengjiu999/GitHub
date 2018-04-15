//
//  MoveView.m
//  DIY
//
//  Created by apple on 2018/4/13.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "MoveView.h"

@implementation MoveView
-(void)setImageView:(NSString *)name{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:name]];
    imageView.frame = CGRectMake(0, 0,imageView.frame.size.width, imageView.frame.size.height);
    [self addSubview:imageView];
    self.diyImageView = imageView;
}
//重写init方法
- (instancetype)init{
    if(self = [super init]){
        //添加长按手势
        UILongPressGestureRecognizer *gesture =[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPress:)];
        [self addGestureRecognizer:gesture];
        
        //添加点击手势
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesture:)];
        [self addGestureRecognizer:tapGesture];
        
        //添加MoveView拖动手势，doMoveAction:实现图片拖动
        UIPanGestureRecognizer * panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self
            action:@selector(panGesture:)];
        [self addGestureRecognizer:panGestureRecognizer];
        
    }
    return self;
}
//手势监听
- (void)longPress :(UIGestureRecognizer *)recognizer{
    [self.delegate MoveViewIsLongPressed :self recognizer :recognizer];
}
-(void)tapGesture:(UIGestureRecognizer *)recognizer{
    [self.delegate MoveViewIsTap:self recognizer:recognizer :self.diyImageView];
}
-(void)panGesture:(UIGestureRecognizer *)recognizer{
    [self.delegate MoveViewIsPan:self recognizer:recognizer];
    
}
@end
