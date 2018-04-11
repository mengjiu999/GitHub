//
//  MoveView.m
//  00074UITableView
//
//  Created by apple on 2018/4/7.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "MoveView.h"
@interface MoveView ()
@property (nonatomic,strong) UIImageView *graphicalImageView;

@end
@implementation MoveView

-(void)setGraphicall:(NSString *)graphicallName{
    
    self.graphicalImageView.image = [UIImage imageNamed:graphicallName];
    
//    self.graphicalImageView.backgroundColor = [UIColor blackColor];
    
}
-(void)setGraphicallWithFrame:(CGRect)frame{
    self.graphicalImageView.frame = frame;

}
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //做UIView拖拽
    UITouch *touch = [touches anyObject];
    NSUInteger toucheNum = [[event allTouches] count];
    if ( toucheNum > 1 ) {
        return;//多个手指不执行平移
    }
    else {
        //求偏移量
        CGPoint curp = [touch locationInView:self];
        CGPoint prep = [touch previousLocationInView:self];
        CGFloat offsetx = curp.x - prep.x;
        CGFloat offsety = curp.y - prep.y;
        
        //平移
        self.transform = CGAffineTransformTranslate(self.transform, offsetx, offsety);
    }
    

}

//-(void)addGestureRecognizerToView:(UIView *)view{
//    //旋转
//    UIRotationGestureRecognizer *rotationGestureRecognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotateView:)];
//    [view addGestureRecognizer:rotationGestureRecognizer];
//
//    //缩放
//    UIPinchGestureRecognizer *pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchView:)];
//    [view addGestureRecognizer:pinchGestureRecognizer];
//
//}
////处理旋转手势
//-(void)rotateView:(UIRotationGestureRecognizer *)rotationGestureRecognizer{
//    UIView *view = rotationGestureRecognizer.view;
//    if (rotationGestureRecognizer.state == UIGestureRecognizerStateBegan || rotationGestureRecognizer.state == UIGestureRecognizerStateChanged) {
//        view.transform = CGAffineTransformRotate(view.transform, rotationGestureRecognizer.rotation);
//        [rotationGestureRecognizer setRotation:0];
//    }
//}
////处理缩放手势
//- (void) pinchView:(UIPinchGestureRecognizer *)pinchGestureRecognizer
//{
//    UIView *view = pinchGestureRecognizer.view;
//    if (pinchGestureRecognizer.state == UIGestureRecognizerStateBegan || pinchGestureRecognizer.state == UIGestureRecognizerStateChanged) {
//        view.transform = CGAffineTransformScale(view.transform, pinchGestureRecognizer.scale, pinchGestureRecognizer.scale);
//        pinchGestureRecognizer.scale = 1;
//    }
//}
@end
