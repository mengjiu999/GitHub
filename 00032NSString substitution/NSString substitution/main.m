//
//  main.m
//  NSString substitution
//
//  Created by apple on 2018/1/27.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
/*
//需求，将&替换为/
    NSString *str = @"http:&www.520it.com&img";
//OccurrencesOfString被替换的字符
//withString用什么替换
    NSString *newstr = [str stringByReplacingOccurrencesOfString:@"&" withString:@"/"];
    NSLog(@"newstr = %@",newstr);
*/
/*
//将&替换为/，去掉空格
    NSString *str = @"   http:&www.  520it.com&img  ";
//1.去掉空格
    NSString *newstr = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSLog(@"newstr = |%@|",newstr);
    NSString *newstr1 = [newstr stringByReplacingOccurrencesOfString:@"&" withString:@"/"];
    NSLog(@"newstr1 = |%@|",newstr1);
 */
//替换首位
    NSString *str = @"   http:&www.  520it.com&img  ";
    NSCharacterSet *set = [NSCharacterSet whitespaceCharacterSet];
    NSString *newstr = [str stringByTrimmingCharactersInSet:set];
    NSLog(@"newstr = %@",newstr);
}
