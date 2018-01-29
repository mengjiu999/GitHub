//
//  main.m
//  NSMutableString pratice
//
//  Created by apple on 2018/1/29.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
/*
     将三个520it拼接在一起，中间用空格隔开
     520it 520it 520it
 */
    NSString *str = @"520it";
    NSString *newstr = [str stringByAppendingString:@" "];
    for(int i = 0;i < 2;i++){
        newstr = [newstr stringByAppendingString:str];
        newstr = [newstr stringByAppendingString:@" "];
    }
//  newstr = [newstr stringByReplacingCharactersInRange:NSMakeRange(newstr.length - 1,1) withString:@""];
    newstr = [newstr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSLog(@"|%@|",newstr);
}
