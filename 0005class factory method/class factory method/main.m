//
//  main.m
//  class factory method
//
//  Created by apple on 2017/12/16.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
int main(int argc, const char * argv[]) {
//    Person *p = [[Person alloc]init];
//    Person *p1 = [Person person];
//    p1.age = 20;
    Person *p1 = [Person personwithAge:30];
    NSLog(@"age = %i",p1.age);
/*
自定义类工厂方法是苹果的一个规范，一般情况下，我们会给一个类提供自定义构造方法和自定义类工厂方法用于初始化一个对象
*/
//    [[NSString alloc]init];
//    [NSString string];
//    
//    [[NSString alloc]initWithString:];
//    
//    [NSString stringWithUString:<#(nonnull const char *)#>];
    Student *stu = [Student person];
    stu.no = 111;
    NSLog(@"no = %i",stu.no);
    Student *stu1 = [Student personwithAge:1];
    stu1.no = 122;
     NSLog(@"no = %i",stu1.no);
    return 0;
}
