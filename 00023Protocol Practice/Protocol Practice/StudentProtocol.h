//
//  StudentProtocol.h
//  Protocol Practice
//
//  Created by apple on 2017/12/24.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 协议的编写规范：
 1.一般情况下，当前协议属于谁，我们就将协议定义在谁的头文件中
 2.协议名称一般以它属于的那个类的类名开头，后面跟上protocol或者delegate
 3.协议中的方法名称一般以协议的名称protocol之前作为开头
 4.一般情况下协议中的方法会将触发该协议的对象传递出去
 5.一般情况下一个类的代理名称叫做delegate
 6.在某一个类要成为另外一个类的代理的时候
 一般情况下.h用@protocol 协议名称，告诉当前类这是一个协议
 在.m中用#导入一个真正的协议的声明
 */
@class Student;
@protocol StudentProtocol <NSObject>
    -(void)StudentFindHouse:(Student *)student;
@end
