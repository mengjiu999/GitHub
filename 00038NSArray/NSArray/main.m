//
//  main.m
//  NSArray
//
//  Created by apple on 2018/1/29.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSArray *arr = @[@"zhk",@"1998",@"0123"];
    //1.将数组写入到文件中
    //如果将一个数组写入到一个文件中，本质是写入了一个XML文件
    //在ios开发中，我们会将XML文件的拓展名保存为plist
    BOOL flag = [arr writeToFile:@"/Users/Desktop/abc.txt" atomically:YES];
    NSLog(@"flag = %i",flag);
    //2.从文件中读取一个数组
    NSArray *newArray = [NSArray arrayWithContentsOfURL:@"/Users/Desktop/abc.txt"];
    NSLog(@"%@",newArray);
}
