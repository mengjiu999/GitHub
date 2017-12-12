//
//  Person1w.m
//  构造方法基本概念
//
//  Created by apple on 2017/12/9.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import "Person1w.h"

@implementation Person1w
//重写init方法，在init方法中初始化成员变量
//注意：重写init方法要按照苹果规定的格式写，如果不按照规定会引发一些未知的错误
//1.必须先初始化父类，再初始化子类
//2.必须判断父类是否初始化成功，只有父类初始化成功才能继续初始化子类
//3.返回当前对象的地址
-(instancetype)init{
    //1.初始化父类
    //只要父类初始化成功，就会返回对应的地址，如果父类初始化失败，就会返回nil
    //nil == 0 == 假 == 没有初始化成功
    //self =[super init];
    //判断父类是否初始化成功
    if(self =[super init]){
        //设置属性的值
        //初始化属性
        _age =6;
    }
    //返回地址
    return self;
    
}
@end
