//
//  ViewController.m
//  DIY
//
//  Created by apple on 2018/4/12.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"
#define ScreenW [UIScreen mainScreen].bounds.size.width
#define ScreenH [UIScreen mainScreen].bounds.size.height

@interface ViewController ()<MoveViewDelegate,UIGestureRecognizerDelegate>

@property(nonatomic) CGFloat lastRotation;
@property (nonatomic) CGRect frame;
@property (weak, nonatomic) IBOutlet UIView *drawView;
@property (weak, nonatomic) UIView *fitView;
@property (strong, nonatomic) UIView  *tapView;
@property (strong, nonatomic) UIImageView *diyImageView;
@property (strong, nonatomic) UIView *moveView;
-(void)changeImageSize:(UIPinchGestureRecognizer *)recognizer;
-(void)rotateImage:(UIRotationGestureRecognizer *)rotateRecognizer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加捏合手势识别器，changeImageSize:方法实现图片的放大与缩小
    UIPinchGestureRecognizer *pinchRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(changeImageSize:)];
    [self.view addGestureRecognizer:pinchRecognizer];
    
    //添加旋转手势识别器，rotateImage:方法实现图片的旋转
    UIRotationGestureRecognizer *rotateRecognizer = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotateImage:)];
    [self.view addGestureRecognizer:rotateRecognizer];
    

    
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
- (IBAction)saveClick:(id)sender {
    UIGraphicsBeginImageContextWithOptions(self.drawView.bounds.size, NO, 0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    [self.view.layer renderInContext:ctx];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}

-(void)moveView:(NSString *)name{
    //图片属性
    MoveView *moveView = [[MoveView alloc] init];
    [self.drawView addSubview:moveView];
    moveView.frame = CGRectMake(100, 100, 60, 60);
    moveView.delegate = self;
    moveView.backgroundColor = [UIColor clearColor];
    [moveView setImageView:name];
    self.moveView = moveView;

 

}
-(void)MoveViewIsLongPressed:(UIView *)view recognizer:(UIGestureRecognizer *)recognizer{
    [self promptDeletion:view];
}
-(void)MoveViewIsTap:(UIView *)view recognizer:(UIGestureRecognizer *)recognizer :(UIImageView *)imageView{
    self.tapView = view;
    self.diyImageView = imageView;
}

-(void)changeImageSize:(UIPinchGestureRecognizer *)recognizer
{
    CGRect frame = self.tapView.frame;
    CGPoint center = CGPointMake(frame.size.width/2, frame.size.height/2);
    self.tapView.center  = center;
    frame.size.width = recognizer.scale*128;
    frame.size.height = recognizer.scale*128;
    self.tapView.frame = frame;
    self.diyImageView.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
}


-(void)rotateImage:(UIRotationGestureRecognizer *)rotateRecognizer
{
    //改变imageView的角度，使图片旋转
    CGPoint center = CGPointMake(self.tapView.frame.size.width/4, self.tapView.frame.size.height/4);
    self.tapView.center  = center;
    if ([rotateRecognizer state]==UIGestureRecognizerStateEnded) {
        self.lastRotation = 0.0;
        return;
    }
    CGAffineTransform currentTransform = self.tapView.transform;
    CGFloat rotation = 0.0 - (self.lastRotation - rotateRecognizer.rotation);
    CGAffineTransform newTransform = CGAffineTransformRotate(currentTransform,rotation);
    self.tapView.transform = newTransform;
    self.lastRotation = rotateRecognizer.rotation;
}

//提示框
-(void)promptDeletion:(UIView *)fitView{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"是否删除该图形？" preferredStyle:UIAlertControllerStyleAlert];
    // 是
    _okAction = [UIAlertAction actionWithTitle:@"是" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {
        
        [fitView removeFromSuperview];
        
    }];
    _cancelAction =[UIAlertAction actionWithTitle:@"否" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:_okAction];
    [alert addAction:_cancelAction];
    
    // 弹出对话框
    [self presentViewController:alert animated:true completion:nil];
    
}

-(void)MoveViewIsPan:(UIView *)view recognizer :(UIPanGestureRecognizer *)recognizer{


    
        CGPoint translation = [recognizer translationInView:self.view];
        CGPoint newCenter = CGPointMake(recognizer.view.center.x+ translation.x,
                                        recognizer.view.center.y + translation.y);
        //    限制屏幕范围：
        newCenter.y = MAX(recognizer.view.frame.size.height/2, newCenter.y);
        newCenter.y = MIN(self.drawView.frame.size.height - recognizer.view.frame.size.height/2, newCenter.y);
        newCenter.x = MAX(recognizer.view.frame.size.width/2, newCenter.x);
        newCenter.x = MIN(self.drawView.frame.size.width - recognizer.view.frame.size.width/2,newCenter.x);
        recognizer.view.center = newCenter;
        [recognizer setTranslation:CGPointZero inView:self.drawView];
   
   
}



@end
