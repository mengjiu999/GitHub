//
//  Person.h
//  Custom construction method
//
//  Created by apple on 2017/12/14.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;
@property NSString * name;
/*
 自定义构造方法：
 其实就是自定义一个init方法
 1.一定是对象方法
 2。一定返回id/instancetype
 3.方法名称一定以init开头
 */
-(instancetype)initWithAge:(int)age;
//一个类可以有一个或者多个自定义构造方法
//自定义构造方法可以有一个或多个参数
-(instancetype)initWithAge:(int)age andName:(NSString *)name;
@end
