//
//  JYNTabbarcontroller.m
//  00069Frame
//
//  Created by apple on 2018/3/29.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "JYNTabbarcontroller.h"

@interface JYNTabbarcontroller ()

@end

@implementation JYNTabbarcontroller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
-(void)setUpAllChildViewController{
    JYNTabbarcontroller *oneVC = [[JYNTabbarcontroller alloc] init];
    [self setUpOneChildViewControlle:oneVC image:[UIImage imageNamed:@"a"] title:@"首页"];
}

//添加子控制器
-(void)setUpOneChildViewControlle:(UIViewController *)viewcontroller image:(UIImage *)image title:(NSString *)title{
    
    UINavigationController *navC = [[UINavigationController alloc] initWithRootViewController:viewcontroller];
    navC.title = title;
    navC.tabBarItem.image = image;
    [navC.navigationBar setBackgroundImage:[UIImage imageNamed:@"a"] forBarMetrics:UIBarMetricsDefault];
    viewcontroller.navigationItem.title = title;
    
    [self addChildViewController:navC];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
