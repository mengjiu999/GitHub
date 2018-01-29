//
//  main.m
//  NSMutableString method
//
//  Created by apple on 2018/1/28.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSMutableString *strM = [NSMutableString stringWithFormat:@"www.520it.com"];
/*
//1.在字符串后面添加/image
    [strM appendString:@"/image"];
//[strM appendString:@"/iage is = %i",10];
    NSLog(@"%@",strM);
//2.删除字符串中的520
//技巧：在开发中，我们利用
//2.1先找出字符串中520的位置rangeOfString和deleteCharactersInRange配合起来删除指定的内容
    NSRange range = [strM rangeOfString:@"520"];
//2.2删除520
    [strM deleteCharactersInRange:range];
    NSLog(@"%@",strM);
*/
//3.在520前面加入指定的内容
    //insertString:需要插入的字符串 atIndex：从哪里插入字符串
    NSRange range = [strM rangeOfString:@"520"];
    [strM insertString:@"zhk" atIndex:range.location];
    NSLog(@"%@",strM);
}
