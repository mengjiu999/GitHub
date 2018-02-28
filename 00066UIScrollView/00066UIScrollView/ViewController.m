//
//  ViewController.m
//  00066UIScrollView
//
//  Created by apple on 2018/2/20.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.添加UIImageView
    UIImage *image = [UIImage imageNamed:@"u=3677207362,2361461978&fm=27&gp=0"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [self.scrollView addSubview:imageView];
    
    //2.设置
    self.scrollView.contentOffset = CGPointMake(20, 50);
    
    //3.内容的偏移量
    //作用 控制，得知内容滚动的内容
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
 点击控制器的view会自动调用这个方法
 */
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesBegan");
}

#pragma mark - 按钮的点击

- (IBAction)top {

    [UIView animateWithDuration:2.0 animations:^{
//        CGPoint offset = self.scrollView.contentOffset;
//        offset.y = 0;
//        self.scrollView.contentOffset = offset;
        self.scrollView.contentOffset = CGPointMake(self.scrollView.contentOffset.x, 0);
    }];
    //无法设置时间
//    [self.scrollView setContentOffset:(self.scrollView.contentOffset.x, 0) animated:YES];
}
- (IBAction)bottom {
    [UIView animateWithDuration:2.0 animations:^{
        CGFloat offsetX = self.scrollView.contentOffset.x;
        CGFloat offsetY = self.scrollView.frame.size.height - self.scrollView.contentSize.height;
        CGPoint offset = CGPointMake(offsetX, offsetY);
        self.scrollView.contentOffset = offset;
    }];
}
- (IBAction)left {
    [UIView animateWithDuration:2.0 animations:^{
        CGFloat offsetY = self.scrollView.contentOffset.y;
        CGPoint offset = CGPointMake(0, offsetY);
        self.scrollView.contentOffset = offset;
    }];
}
- (IBAction)right {
    [UIView animateWithDuration:2.0 animations:^{
        CGFloat offsetY = self.scrollView.contentOffset.y;
        CGFloat offsetX = self.scrollView.frame.size.width - self.scrollView.contentSize.width;
        CGPoint offset = CGPointMake(offsetX, offsetY);
        self.scrollView.contentOffset = offset;
    }];
}


@end
