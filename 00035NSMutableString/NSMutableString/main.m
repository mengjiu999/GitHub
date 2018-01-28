//
//  main.m
//  NSMutableString
//
//  Created by apple on 2018/1/28.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
/*
    NSString *str = @"zhk";//一开始str指向zhk对应的内存
    str = @"zk";//修改str指向，它指向了zk对应的内存
    NSString *str1 = [str stringByReplacingOccurrencesOfString:@"z" withString:@"j"];
    NSLog(@"%@",str1);
*/
//创建一个空的字符串
    NSMutableString *str = [NSMutableString string];
    NSLog(@"修改前%@",str);
    [str appendString:@"zhk"];
    NSLog(@"修改后%@",str);
//NSMutableString *strM = [[NSMutableString alloc] init];
//*strM = [[NSMutableString alloc]initWithFormat:];
    *strM  = [NSMutableString stringWithFormat:<#(nonnull NSString *), ...#>]//常用方法
    
}
