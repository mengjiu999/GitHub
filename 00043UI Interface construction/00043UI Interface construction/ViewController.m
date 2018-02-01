//
//  ViewController.m
//  00043UI Interface construction
//
//  Created by apple on 2018/2/1.
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
//注意：一般情况下，控制器的类中的方法不能与storyboard中的事件连线
//如果想要连线，需要将方法的返回值改成IBAction
/*
 IBAction:
     1.是oc中的关键字
     2.作用相当于void
     3.只有返回值是IBAction才能与storyboard相连
 */
-(IBAction)redBtnClick
{
    NSLog(@"%s",__func__);
}
-(IBAction)greenBtnClick
{
    NSLog(@"%s",__func__);
}
-(IBAction)blueBtnClick
{
    NSLog(@"%s",__func__);
}

@end
