//
//  ViewController.m
//  DIY
//
//  Created by apple on 2018/4/12.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UIView *moveView;
@property(nonatomic) CGFloat lastRotation;
@property (nonatomic) CGRect frame;
@property (weak, nonatomic) UIView *selectedView;
@property (nonatomic) CGPoint touchPoint;
@property (weak, nonatomic) IBOutlet UIView *drawView;
@property (weak, nonatomic) UIView *fitView;
//-(void)changeImageSize:(UIPinchGestureRecognizer *)recognizer;
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

- (IBAction)circularClick:(id)sender {
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
    MoveView *moveView = [[MoveView alloc] init];
    [self.drawView addSubview:moveView];
//    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:name]];
//    [moveView addSubview:imageView];
    moveView.image = [UIImage imageNamed:name];
    moveView.frame = CGRectMake(100, 100, 60, 60);
    moveView.delegate = self;
    moveView.backgroundColor = [UIColor clearColor];
    self.moveView = moveView;



    //添加捏合手势识别器，changeImageSize:方法实现图片的放大与缩小
    UIPinchGestureRecognizer *pinchRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(changeImageSize:)];
    [self.view addGestureRecognizer:pinchRecognizer];

    //添加旋转手势识别器，rotateImage:方法实现图片的旋转
    UIRotationGestureRecognizer *rotateRecognizer = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotateImage:)];
    [self.view addGestureRecognizer:rotateRecognizer];
    
//    //添加长按手势识别器，longP方法实现图片删除
//    UILongPressGestureRecognizer *longP = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longP)];
//    [self.view addGestureRecognizer:longP];
//    CGPoint touchPoint = [longP locationInView:self.view];
//    self.touchPoint = touchPoint;
    
    
}

-(void)changeImageSize:(UIPinchGestureRecognizer *)recognizer
{
    CGRect frame = self.frame;
    CGPoint center = CGPointMake(frame.size.width/2, frame.size.height/2);
    self.moveView.center  = center;
    //监听两手指滑动的距离，改变imageView的frame
    frame.size.width = recognizer.scale*128;
    frame.size.height = recognizer.scale*128;
    NSLog(@"%f",recognizer.scale);
    self.moveView.frame = frame;
//    self.frame = self.moveView.frame;
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
-(void)longP:(UILongPressGestureRecognizer *)recognizer{
    [self promptDeletion];
    
    
}

//提示框
-(void)promptDeletion{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"是否删除该图形？" preferredStyle:UIAlertControllerStyleAlert];
    // 是
    _okAction = [UIAlertAction actionWithTitle:@"是" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {
            
        
    }];
    _cancelAction =[UIAlertAction actionWithTitle:@"否" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:_okAction];
    [alert addAction:_cancelAction];
    
    // 弹出对话框
    [self presentViewController:alert animated:true completion:nil];
    
    
}




@end
