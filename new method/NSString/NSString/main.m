//
//  main.m
//  NSString
//
//  Created by apple on 2017/12/12.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Iphone : NSObject
-(NSString *)loadMessage;
@end
@implementation Iphone
-(NSString *)loadMessage{
    return @"NSString基本使用";
}
@end
//c语言中的字符串不是对象
//oc中的字符串是对象，所以它具备很多功能
//注意：c语言中字符串是%s,输出oc的字符串用%@，%@是专门用于输出对象类型的
int main(int argc, const char * argv[]) {
    Iphone *p = [Iphone new];
    [p loadMessage];
    NSLog(@"content = %@",[p loadMessage]);
//如何创建oc字符串
    NSString *str = [NSString stringWithFormat:@"age = %i,height = %f",30,1.4];
    NSLog(@"str = %@",str);
//如何计算字符串长度
//不包含/0的
//NSString *str1 = @"ztj";
//计算出来的是个数，而不是占用的字节数
    NSString *str1 = @"张";
    NSUInteger *len = [str1 length];
    NSLog(@"len = %lu",len);
    return 0;
}

