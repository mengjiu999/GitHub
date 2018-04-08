//
//  ViewController.m
//  00074UITableView
//
//  Created by apple on 2018/4/7.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"
#import "MoveView.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *whiteView;
@property (strong, nonatomic) UIView *moveView;
@property(nonatomic) CGFloat lastRotation;
@property (nonatomic) CGRect frame;

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
    moveView.frame = CGRectMake(100, 100, 60, 60);
    [self.view addSubview:moveView];
    moveView.image = [UIImage imageNamed:name];
    moveView.backgroundColor = [UIColor clearColor];
    self.moveView = moveView;
    moveView.center = CGPointMake(moveView.frame.size.width/2, moveView.frame.size.height/2);
    

//添加捏合手势识别器，changeImageSize:方法实现图片的放大与缩小
    UIPinchGestureRecognizer *pinchRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(changeImageSize:)];
    [self.view addGestureRecognizer:pinchRecognizer];
    
//添加旋转手势识别器，rotateImage:方法实现图片的旋转
    UIRotationGestureRecognizer *rotateRecognizer = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotateImage:)];
    [self.view addGestureRecognizer:rotateRecognizer];

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
@end
