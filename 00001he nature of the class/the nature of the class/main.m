//
//  main.m
//  the nature of the class
//
//  Created by apple on 2017/12/16.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
/*
 类的本质：
 类其实也是一个对象，这个对象会在类第一次使用的时候被创建
 只要有了类对象，将来就可以通过类对象来创建实例对象
 实例对象中有一个isa指针，指向创建自己的类对象
 
 实例对象中保存了当前对象所有的对象方法
 当给一个实例对象发送消息的时候，会根据实例对象中的isa指针去对应的类对象中查找
 */
//如何或许类对象
//[实例对象 class]; [类名 class];
    Person *p1 = [[Person alloc]init];
    Person *p2 = [[Person alloc]init];
//一个类在内存中只有一份类对象
    Class c1 = [p1 class];
    Class c2 = [p2 class];
    Class c3 = [Person class];
    NSLog(@"c1 = %p,c2 = %p,c3 = %p",c1,c2,c3);
//类对象的应用场景
//1.创建实例对象
    Person *p3 = [[c1 alloc]init];
    p3.age = 20;
    NSLog(@"age = %i",p3.age);
//2.调用类方法
//相当于[Person test];
    [c1 test];
    return 0;
}
