//
//  ViewController.m
//  Recoder
//
//  Created by apple on 2018/2/18.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"
#import "Recorder.h"
@interface ViewController ()
@property (nonatomic,strong) Recorder *rec;
@end


@implementation ViewController

- (IBAction)beginRecording:(UIButton *)sender{
    [self.rec startRecording:[NSURL URLWithString:@"/Users/apple/Desktop"]];
}
- (IBAction)stopRecording:(UIButton *)sender {
    [self.rec stopRecording];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    self.rec = [[Recorder alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
