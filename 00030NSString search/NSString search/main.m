//
//  main.m
//  NSString search
//
//  Created by apple on 2018/1/27.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
//本质就是从字符串的第一个开始匹配，不匹配就返回NO
//判断以什么开头
    NSString *str = @"abcde";
    if([str hasPrefix:@"http://"]){
        NSLog(@"是一个URL");
    }else{
        NSLog(@"不是URL");
    }
//判断以什么结尾
    if([str hasSuffix:@".gif"]){
        NSLog(@"是动态图片");
    }else{
        NSLog(@"不是动态图片");
    }
//判断字符串中是否包含abc
//如果str中包含该字符串，那么就会返回该字符串的起始位置和长度
    NSRange range = [str rangeOfString:@"abc"];
    NSLog(@"location = %lu,length = %lu",range.location,range.length);
    if(range.location == NSNotFound){
        NSLog(@"没有找到字符串");
    }else{
        NSLog(@"已找到字符串");
        NSLog(@"location = %lu,length = %lu",range.location,range.length);
    }
    
}
