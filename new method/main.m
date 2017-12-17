//
//  main.m
//  new方法实现原理
//
//  Created by apple on 2017/12/9.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    /*
     new做了三件事
     1.开辟存储空间 +alloc 方法
     2.初始化所有的属性（成员变量）-init 方法
     3.返回对象的地址
     */
//Person *p = [Person new];
//alloc做了什么事情？1.开辟存储空间 2.将所有的属性设置为0 3.返回当前实例对象的地址
    Person *p1 = [Person alloc];
//1.初始化成员变量 但是默认情况下init什么多没做 2.返回初始化后的实例对象地址
    Person *p2 = [p1 init];
//[[Person alloc]init]
//注意：alloc返回地址，和init是同一个
    Person *p3 = [[Person alloc]init];
    NSLog(@"p1 =%p,p2 =%p,p3 =%p",p1,p2,p3);
//建议创建对象都用[[Person alloc]init]，这样可以统一编码格式
    return 0;
}
