//
//  main.m
//  字符串比较 NSString comparison
//
//  Created by apple on 2018/1/27.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSString *str1 = @"abc";
    NSString *str2 = @"abc";
//比较两个字符串的内容是否相同
    BOOL flag = [str1 isEqualToString:str2];
    NSLog(@"flag = %i",flag);
//下面是比较两个字符串的地址是否相同
    flag = (str1 == str2);
    NSLog(@"flag = %i",flag);
//比较字符串大小（区分大小写比较）
//NSOrderedSame相等
//NSOrderedAscending前面的小于后面的
//NSOrderedDescending前面的大于后面的
        switch ([str1 compare:str2]) {
            case NSOrderedSame:
                NSLog(@"str1等于str2");
                break;
            case NSOrderedAscending:
                NSLog(@"str1小于str2");
                break;
            case NSOrderedDescending:
                NSLog(@"str1大于str2");
                break;
            default:
                break;
        }
//不区分大小写比较
    [str1 caseInsensitiveCompare:str2];

    
}
