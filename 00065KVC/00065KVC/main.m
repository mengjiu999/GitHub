//
//  main.m
//  00065KVC
//
//  Created by apple on 2018/2/20.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
 KVC
     概念：key value Coding
     作用：
         1.KVC可以给对象的私有变量赋值
         2.用于字典转模型
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         //给p属性赋值
         // p.name = @"why":
         [p setValue:@"zk" forKey:@"name"];
         
         
         p.name = dict[@"name"];
         [p setValue:dict[@"height"] forKey:@"height"];
         p.age = [dict[@"age"] integerValue] ;
         
         
         */
        
        //定义字典
        NSDictionary *dict = @{
                               @"name" : @"zhk",
                               @"height" : @"1.88",
                               @"age" : @"18"
                               };
        //字典转模型
        Person *p = [Person personWithDict:dict];
        
        NSLog(@"%@",p);
   
    }
    return 0;
}
