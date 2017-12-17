//
//  ViewController.m
//  Person
//
//  Created by apple on 2017/12/17.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIButton *buttona;
@property (nonatomic,copy) NSString *str;
@end

@implementation ViewController

//- (void)viewDidLoad {
//    [super viewDidLoad];
//   
////    NSArray *a = self.view.subviews;
////    [a enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
////        NSLog(@"%@",obj);
////    }];
//    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(200, 200, 100, 50)];
//    
//    btn.backgroundColor = [UIColor redColor];
//    [self.view addSubview:btn];
//    [btn setTitle:@"button" forState:UIControlStateNormal];
//}

- (IBAction)Buttonb:(UIButton *)sender {
    CGRect frame = self.buttona.frame;
    frame.size.height = 100;
    frame.size.width = 100;
    self.buttona.frame = frame;
}

@end
