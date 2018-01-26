//
//  main.m
//  NSString
//
//  Created by apple on 2018/1/26.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 file:文件路径
 encoding:编码英文 IOS-5988-1 中文 GBK GBK2312 一般情况填写UTF-8（所有语言）
 error:如果读取错误，会将错误信息保存到error中，如果读取正确，就没有error = nil
 注意：以后再oc方法中，但凡看到XXXOfFile的方法，传递的一定是全路径（绝对路径）
 */

int main(int argc, const char * argv[]) {
    NSError *error =nil;
    NSString *str = [NSString stringWithContentsOfFile:<#(nonnull NSString *)#> encoding:<#(NSStringEncoding)#> error:&error];
    if(error == nil){
        NSLog(@"str = %@",str);
    }else{
        NSLog(@"error = %@",error);
    }
//将字符串写入文件中
/*
 atomically:如果传入YES，字符串写入的过程中如果没有写完，那么不会生成文件
            如果传入NO，字符串写入的过程中如果没有写完，会生成文件
 */
    BOOL flag = [str writeToFile:<#(nonnull NSString *)#> atomically:<#(BOOL)#> encoding:<#(NSStringEncoding)#> error:<#(NSError * _Nullable __autoreleasing * _Nullable)#>];
    
}

