//
//  main.m
//  NSString intercept
//
//  Created by apple on 2018/1/27.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
//NSRange range:位置/长度
    NSString *str = @"<head>喵呜</head>";
//只要是OC提供的结构体，一般可以用NSMakeXXX来创建
//动态获取数据的起始位置
//注意：rangeOfString是从左向右查找，只要找到就不找了
    NSUInteger location = [str rangeOfString:@">"].location + 1;
//动态获取截取的长度
    NSUInteger length = [str rangeOfString:@"</"].location - location;
    NSLog(@"location = %lu,length = %lu",location,length);
    NSRange range = NSMakeRange(location, length);
    NSString *newstr = [str substringWithRange:range];
    NSLog(@"str = %@",str);
    NSLog(@"str = %@",newstr);
    
}
