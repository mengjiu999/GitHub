//
//  main.m
//  NSString
//
//  Created by apple on 2018/1/26.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
//1.创建URL
    //协议头+主机地址+文件路径
    //注意：如果加载的是本机上的资源，那么URL中的主机地址可以省略
    //虽然本机地址可以省略，但是注意，文件路径前的/不能省略，文件路径最前的/代表根路径
    NSString *path = @"";
    NSURL *url1 = [NSURL fileURLWithPath:<#(nonnull NSString *)#>];
    //通过这种方法创建URL,那么系统会自动给我们传入的字符串添加协议头，所以字符串中不需要写file://
    //注意：开发中一般情况下，如果是访问本机资源的时候，创建URL，建议使用fileURLWithPath方法创建
    //因为url不支持中文，如果URL中包括中文，那么无法访问，但是如果是通过fileURLWithPath方法创建url，哪怕URL中包含中文也可以访问，系统内部会自动对url中包含的中文进行处理
    NSURL *url = [NSURL URLWithString:path];
    //如果URL包含中文，又非不通过fileURLWithPath创建，也可以破
    //如果想破就必须在创建URL之前先对字符串中的中文进行处理，进行百分号编码
    path = [path stringByAddingPercentEncodingWithAllowedCharacters:<#(nonnull NSCharacterSet *)#>];
//2.根据URL加载文件中的字符串
    NSString *str = [NSString stringWithContentsOfFile:<#(nonnull NSString *)#> encoding:<#(NSStringEncoding)#> error:<#(NSError * _Nullable __autoreleasing * _Nullable)#>];
    
}
