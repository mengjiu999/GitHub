//
//  main.m
//  SEL type
//
//  Created by apple on 2017/12/16.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"
int main(int argc, const char * argv[]) {
/*
//1.SEL类型方法的第一个作用，配合对象/类来检查对象/类中有没有实现某一个方法
    SEL sel = @selector(setAge:);
    Person *p = [[Person alloc]init];
//判断p对象中有没有实现-号开头的setAge:方法
//如果p对象中实现了setAge:方法，那么就返回Yes
//如果p对象中没有实现setAge:方法，那么就返回No
    BOOL flag = [p respondsToSelector:sel];
    NSLog(@"flag = %i",flag);
//respondsToSelector注意点：如果是通过一个对象来调用该方法那么会判断该对象有没有实现一个-号开头的方法
//如果是通过类来调用方法，那么会判断该类是否实现一个+号开头的方法
    SEL sel1 = @selector(test);
    flag = [p respondsToSelector:sel1];
    NSLog(@"flag = %i",flag);
    flag = [Person respondsToSelector:sel1];
    NSLog(@"flag = %i",flag);
*/
    
//2.SEL的第二个作用，配合对象/类来调用某一个SEL方法
/*  SEL sel = @selector(demo);
    Person *p = [Person new];
//调用p中sel对应的方法
    [p respondsToSelector:sel];
//注意performSelector最多只能传两个参数
    SEL sel1 = @selector(signalWithNumber:andContent:);
    [p performSelector:sel1 withObject:@"11" withObject:@"abc"];
//withObject：需要传递的参数
    [p performSelector:sel1 withObject:@"111111"];
    SEL sel2 = @selector(signalWithNumber:);
 */
//3.配合对象将SEL类型作为方法的形参
    Car *c = [Car new];
    SEL sel = @selector(run);
    Person *p = [Person new];
    [p makeObject:c andSel:sel];
}
