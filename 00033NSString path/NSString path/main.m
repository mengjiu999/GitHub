//
//  main.m
//  NSString path
//
//  Created by apple on 2018/1/27.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSString *str = @"/User/zhk/Desktop.gif.jpg";
/*
    //判断是否是绝对路径
    //其实本质就是判断字符串是否以/开头
    if([str isAbsolutePath]){
        NSLog(@"是绝对路径");
    }else{
        NSLog(@"不是绝对路径");
    }
*/
/*
    //获取文件路径中的最后一个目录
    //本质就是获取最后一个/后的内容
    NSString *newstr = [str lastPathComponent];
    NSLog(@"%@",newstr);
*/
/*
    //删除路径中的最后一个目录
    NSString *newstr = [str stringByDeletingLastPathComponent];
    NSLog(@"%@",newstr);
 */
/*
    //添加一个目录
    NSString *newstr = [str stringByAppendingPathComponent:@"Desktop"];
    NSLog(@"%@",newstr);
*/
    //获取文件拓展名
    //本质就是从字符串末尾开始找，截取第一个.后面的内容
    NSString *newstr =[str pathExtension];
    NSLog(@"%@",newstr);
    //删除路径中文件的拓展名
    //本质就是从字符串末尾开始找，截取第一个.和.后面的内容
    NSString *newstr1 =[str stringByDeletingPathExtension];
     NSLog(@"%@",newstr1);
    //给文件路径添加一个拓展名
    //本质就是在字符串末尾,加上一个.和指定内容
    NSString *newstr2 =[str stringByAppendingPathExtension:@"txt"];
    NSLog(@"%@",newstr2);
}
