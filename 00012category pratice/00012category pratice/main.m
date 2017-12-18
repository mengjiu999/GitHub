//
//  main.m
//  00012category pratice
//
//  Created by apple on 2017/12/17.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+string.h"
//int countWithStr(NSString *str)
//{
//    int count = 0;
//    for(int i =0;i < str.length;i++){
//        unichar c = [str characterAtIndex:i];
//        if(c >= '0' && c <= '9'){
//            count++;
//        }
//    }
//    return count;
//}
//
int main(int argc, const char * argv[]) {
/*
 已知一个字符串，要求找出字符串中的所有阿拉伯数字
 @"n134ie789nf0jekng"
 1.计算器思想，定义一个变量保存结果
 2.编译字符串，取出字符串中的所有字符
*/
    NSString *str =@"n134ie789nf0jekng";
//    unichar c = [str characterAtIndex:0];
//    NSLog(@"%c",c);
/*    int count = 0;
    for(int i =0;i < str.length;i++){
        unichar c = [str characterAtIndex:i];
//        NSLog(@"%c",c);
        if(c >= '0' && c <= '9'){
            count++;
        }
    }
*/
    int count = countWithStr(str);
    NSLog(@"count = %i",count);
    return 0;
}
