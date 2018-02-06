//
//  ViewController.m
//  00054Animation of the Emperor
//
//  Created by apple on 2018/2/6.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
#pragma mark - 执行动画

#pragma mark 站立

- (IBAction)stand {
//1.加载图片资源
    NSMutableArray *standImages = [NSMutableArray array];
    for(int i = 0 ; i < 10 ; i++){
        NSString *imageName = [NSString stringWithFormat:@"stand_%d",i + 1];
        UIImage *image = [UIImage imageNamed:imageName];
        [standImages addObject:image];
    }
    
//2.设置动画的图片
    self.imageView.animationImages = standImages;
    
//3.开始动画
    [self.imageView startAnimating];
}
#pragma mark 小招

- (IBAction)xiaoZhao{
}
#pragma mark 大招

- (IBAction)daZhao {
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
