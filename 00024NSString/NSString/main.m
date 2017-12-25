//
//  main.m
//  NSString
//
//  Created by apple on 2017/12/24.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
//如何创建字符串对象
//通过不同的方式创建字符串常量，字符串对象存储的位置不同
//注意：不同的平台存储的方式不一样，不同的编译器存储的方式也不一样
//如果是通过字符串常量创建字符串对象，如果创建多个字符串对象，并且字符串常量的内容一致，那么多个对象指向同一块存储空间
//1.通过字符串常量创建，存储在常量区
    NSString *str1 = @"ztj";
//2.通过alloc init实现，存储在堆区
    NSString *str2 = [[NSString alloc]initWithFormat:@"ztj"];
//3.通过类工厂方法创建//StringWithFormat，存储在堆区
    NSString *str3 = [NSString stringWithFormat:@"ztj"];
    
}
