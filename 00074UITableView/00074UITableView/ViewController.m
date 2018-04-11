//
//  ViewController.m
//  00074UITableView
//
//  Created by apple on 2018/4/7.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"
#import "MoveView.h"
@interface ViewController ()<UIGestureRecognizerDelegate>
@property (strong, nonatomic) IBOutlet UIView *whiteView;
@property (strong, nonatomic) UIView *moveView;
@property(nonatomic) CGFloat lastRotation;
@property (nonatomic) CGRect frame;
@property (weak, nonatomic) UIView *selectedView;
@property (nonatomic) CGPoint touchPoint;
@property (weak, nonatomic) IBOutlet UIView *drawView;

-(void)changeImageSize:(UIPinchGestureRecognizer *)recognizer;
-(void)rotateImage:(UIRotationGestureRecognizer *)rotateRecognizer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ringClick:(id)sender {
    [self moveView:@"circular"];

}
- (IBAction)squareClick:(id)sender {
    [self moveView:@"square"];
}
- (IBAction)triangleClick:(id)sender {
    [self moveView:@"triangle"];
}
-(void)moveView:(NSString *)name{
//图片属性
    MoveView *moveView = [[[NSBundle mainBundle] loadNibNamed:@"MoveView" owner:nil options:nil] firstObject];
    [self.drawView addSubview:moveView];
    moveView.frame = CGRectMake(200, 200, 60, 60);
    moveView.userInteractionEnabled = YES;
    [self.view addSubview:moveView];
    moveView.image = [UIImage imageNamed:name];
    moveView.backgroundColor = [UIColor clearColor];
    self.moveView = moveView;

    

//添加捏合手势识别器，changeImageSize:方法实现图片的放大与缩小
    UIPinchGestureRecognizer *pinchRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(changeImageSize:)];
    [self.view addGestureRecognizer:pinchRecognizer];
    
//添加旋转手势识别器，rotateImage:方法实现图片的旋转
    UIRotationGestureRecognizer *rotateRecognizer = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotateImage:)];
    [self.view addGestureRecognizer:rotateRecognizer];
    
//添加长按手势识别器，longP方法实现图片删除
    UILongPressGestureRecognizer *longP = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longP)];
    [self.moveView addGestureRecognizer:longP];
    CGPoint touchPoint = [longP locationInView:self.view];
    
    self.touchPoint = touchPoint;

//添加点击手势识别器，sigleTappedPickerView:实现图片点击
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(sigleTappedPickerView:)];

    [singleTap setNumberOfTapsRequired:1];
    [self.moveView addGestureRecognizer:singleTap];
    singleTap.delegate = self;

    [self sigleTappedPickerView:singleTap];
}

-(void)sigleTappedPickerView:(UIGestureRecognizer *)sender
{

    //取得所点击的点的坐标
    CGPoint point = [sender locationInView:self.drawView];
    self.touchPoint = point;
    [self promptDeletion];
    
}
-(void)changeImageSize:(UIPinchGestureRecognizer *)recognizer
{
    CGRect frame = self.moveView.frame;
    CGPoint center = CGPointMake(self.moveView.frame.size.width/4, self.moveView.frame.size.height/4);
    self.moveView.center  = center;
    //监听两手指滑动的距离，改变imageView的frame
    frame.size.width = recognizer.scale*128;
    frame.size.height = recognizer.scale*128;
    self.moveView.frame = frame;
    self.frame = self.moveView.frame;
}

-(void)rotateImage:(UIRotationGestureRecognizer *)rotateRecognizer
{
    //改变imageView的角度，使图片旋转
    CGPoint center = CGPointMake(self.moveView.frame.size.width/4, self.moveView.frame.size.height/4);
    self.moveView.center  = center;
    if ([rotateRecognizer state]==UIGestureRecognizerStateEnded) {
        self.lastRotation = 0.0;
        return;
    }
    CGAffineTransform currentTransform = self.moveView.transform;
    CGFloat rotation = 0.0 - (self.lastRotation - rotateRecognizer.rotation);
    CGAffineTransform newTransform = CGAffineTransformRotate(currentTransform,rotation);
    self.moveView.transform = newTransform;
    self.lastRotation = rotateRecognizer.rotation;
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
//        [self.moveView removeFromSuperview];
        UIView *fitView = [self hitTest:self.touchPoint withEvent:nil];
        [fitView removeFromSuperview];

        
        
    }];
    _cancelAction =[UIAlertAction actionWithTitle:@"否" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:_okAction];
    [alert addAction:_cancelAction];
    
    // 弹出对话框
    [self presentViewController:alert animated:true completion:nil];

    
}

//////删除
//-(void)addLongPress{
//    CGPoint touchPoint = [touches];
//    for (UIView *subView in [self.drawView subviews]) {
//        if ([subView.layer.presentationLayer hitTest:self.touchPoint]) {
//            [subView removeFromSuperview];
//        }
//    }
//}

//寻找最合适的view

//什么时候调用:当事件传递给当前View时就会调用这个方法
-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    // 判断自己能否接收事件

    if(self.moveView.userInteractionEnabled == NO || self.moveView.hidden == YES || self.moveView.alpha <= 0.01){
        return nil;
    }
    // 触摸点在不在自己身上
    if ([self pointInside:point withEvent:event] == NO) {
        return nil;
    }
    // 从后往前遍历自己的子控件(重复前面的两个步骤)
    int count = (int)self.drawView.subviews.count;
    for (int i = count -1; i >= 0; i--) {
        UIView *childV = self.drawView.subviews[i];
        // point必须得要跟childV相同的坐标系.
        // 把point转换childV坐标系上面的点
        CGPoint childP = [self.moveView convertPoint:point toView:childV];
        UIView *fitView = [childV hitTest:childP withEvent:event];
        if (fitView) {
            return fitView;
        }
    }
    // 如果没有符合条件的子控件，那么就自己最适合处理
    return nil;

}
//作用:判断触摸点在不在当前的View上.
//什么时候调用:在hitTest方法当中会自动调用这个方法.
//注意:point必须得要跟当前View同一个坐标系.
-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    return YES;
}

@end
