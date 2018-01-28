//
//  main.m
//  NSString conversion
//
//  Created by apple on 2018/1/28.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSString *str = @"abc";
//1.将字符串转换为大写
    NSString *newstr = [str uppercaseString];
    NSLog(@"%@",newstr);
//2.将字符串给为小写
    NSString *newstr1 = [newstr lowercaseString];
    NSLog(@"%@",newstr1);
//3.将字符串的首字母转换为大写
    NSString *newstr2 = [str capitalizedString];
    NSLog(@"%@",newstr2);
//4.字符串与基本数据类型的转换
    NSString *str1 = @"123";
    NSString *str2 = @"456";
// str1 + str2错误
    int value1 = [str1 intValue];
    int value2 = [str2 intValue];
    NSLog(@"sum = %i",value1 + value2);
//注意:如果不是int double flout bool integer longlong这些类型就不要乱用
    NSString *str3 = @"a12";
    int value3 = [str3 intValue];
    NSLog(@"value3 = %i",value3);
//c语言转换为OC字符串
    char *c = "zhk";
    NSString *str4 = [NSString stringWithUTF8String:c];
    NSLog(@"str4 = %@",str4);
    
}
