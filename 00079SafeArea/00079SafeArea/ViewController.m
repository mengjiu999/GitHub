//
//  ViewController.m
//  00079SafeArea
//
//  Created by apple on 2018/4/14.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

-(void)viewcontroller{
    [self.delegate ViewControllerReturnSelf:self :self.view.frame];
}
@end
