//
//  Person.m
//  Class startup process
//
//  Created by apple on 2017/12/16.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import "Person.h"

@implementation Person
//只要程序启动就会将类的代码加载到内存中，放到内存区
//load方法会在当前类被加载到内存时调用，有且仅会调用一次
//如果存在继承关系，会先调用父类的load方法，再调用子类的load方法
+(void)load{
    NSLog(@"Person类被加载到内存了");
}
//当当前类第一次被使用的时候就会调用（创建类对象的时候）
//initialize方法在整个程序调用过程中只会调用一次，无论你使用多少次这个类都只会被调用一次
//initialize用于对某一个类进行一次性的初始化
//initialize和load一样，如果存在继承关系，会先调用父类的initialize方法，再调用子类的initialize方法
+(void)initialize{
    NSLog(@"Person initialize");
}
@end
