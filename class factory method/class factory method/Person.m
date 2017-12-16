//
//  Person.m
//  class factory method
//
//  Created by apple on 2017/12/16.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import "Person.h"

@implementation Person
/*
 什么是类工厂方法
 用于快速创建对象的方法，我们称之为类工厂方法
 类工厂方法中主要用于给对象分配存储空间和初始化这块存储空间
 
 规范：
 1.一定是类方法
 2.方法名称以类的名称开头，首字母小写
 3.一定有返回值，返回值是id/instancetype
 */
+(instancetype)person{
//    Person *p = [Person alloc];
//    Person *p1 = [Person init];
//    return p1;
    return [[Person alloc]init];
}
+(instancetype)personwithAge :(int)age{
    Person *p =[[Person alloc]init];
    p.age = age;
    return p;
}
@end
