//
//  main.m
//  00018Block pratice
//
//  Created by apple on 2017/12/22.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
//1.block中可以访问外面的变量
/*
     int a =10;
    void(^myBlock)() = ^{
        NSLog(@"a = %i",a);
    };
    myBlock();
 */
//2.block中可以定义和外界同名的变量，并且如果在block中定义了和外界同名的变量，在block中访问的是block的变量
/*
    int a =10;
    void(^myBlock)() = ^{
        int a = 20;
        NSLog(@"a = %i",a);
    };
    myBlock();
 */
//3.默认情况下，不可以在block中修改外界的值
//因为block中的变量和外界的变量并不是同一个变量
//如果block中访问到了外界的变量，block会将外界的变量拷贝一份到堆内存中
//因为block中使用的外界变量是copy的，所以在调用之前修改外界变量的值，不会影响到block中copy的值
/*
     int a =10;
    void(^myBlock)() = ^{
        a = 20;
        NSLog(@"a = %i",a);
    };
    myBlock();
 */
//如果想在block中修改外界变量的值，必须在外界变量前面加__block
//如果在block中修改了外界变量的值，会影响到外界变量的值
/*
     __block int a =10;
    void (^myBlock)() = ^{
        NSLog(@"a = %i",a);
    };
    myBlock();
*/
//为什么不加__block不能在block中修改外界变量
//为什么加了__block就能在block中修改外界变量
//block是存在堆中还是栈中
//默认情况下，block存储在栈中，如果对block进行一个copy操作，block会转移到堆中
//如果block存在栈中，block访问了外界的对象，那么不会对对象进行retain操作
//如果block存在堆中，block访问了外界的对象，那么会对外界对象进行retain操作
//如果在block中访问了外界的对象，一定要给对象加上__block，只要加上了__block，哪怕在堆中也不会对外界的对象进行retain
    int a =10;
    void(^myBlock)() = ^{
        NSLog(@"a = %i",a);
    };
    myBlock();
                         
}
