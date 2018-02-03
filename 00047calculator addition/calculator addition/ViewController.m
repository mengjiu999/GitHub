//
//  ViewController.m
//  calculator addition
//
//  Created by apple on 2018/2/3.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//输入框
@property (weak, nonatomic) IBOutlet UITextField *num1;
@property (weak, nonatomic) IBOutlet UITextField *num2;
//结果
@property (weak, nonatomic) IBOutlet UILabel *result;

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


- (IBAction)caculator {
    //1.获得第一个输入框的数字
    NSString *num1 = self.num1.text;
    if(num1.length == 0 ){
        [self showError:@"第一个输入框不能为空"];
        return;
    }
    //2.获得第二个输入框的数字
    NSString *num2 =self.num2.text;
    if(num2.length == 0){
        [self showError:@"第二个输入框不能为空"];
       
        return;
    }
    //3.计算结果
    //3.1将字符型转换为整型
    NSInteger no1 = [num1 integerValue];
    NSInteger no2 = [num2 integerValue];
    
    //3.2计算两个数字的结果
    NSInteger result = no1 + no2;
    //4将字符显示在label上
    self.result.text = [NSString stringWithFormat:@"%ld",result];
}
//弹窗
-(void)showError:(NSString *)error{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle: @"输入有误" message:error delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
}

@end

