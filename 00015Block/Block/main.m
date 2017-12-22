//
//  main.m
//  Block
//
//  Created by apple on 2017/12/21.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

//void printRose(){
//    printf("  {@} \n");
//    printf("   |\n");
//    printf("  \\|/\n ");
//    printf("  |");
//}
int sum(int value1,int value2){
    return value1 + value2;
}
int main(int argc, const char * argv[]) {
//    printf("  {@} \n");
//    printf("   |\n");
//    printf("  \\|/\n ");
//    printf("  |");
//    printfRose();
/*
 void代表指向的函数没有返回值
 （）代表指向的函数没有形参
 （*roseP）代表roseP是一个指向函数的指针
 */
//    void (*roseP)();
//    roseP  = printRose;
//    roseP();
//block最简单形式
/*
 void(^block名)() = {^代码块;}
 例如：
 void(^myBlock)() = {^NSLog(@"张");};
 */
//block带有参数的block的定义和使用
/*
 void(^block名称)(参数列表) = ^{参数列表}{//代码实现;}
 例如：
 void(^myBlock)(int) = ^(int num){NSLog(@"num = %i",num);};
*/
//带有参数和返回值的block
/*
 返回类型(^block名称)(参数列表) = ^返回类型(参数列表){//代码实现;}
 例如：
 int (^myBlock)(int,int) = ^(int num1,int num2){return num1 + num2;};
*/
    void(^roseBlock)(int);
    roseBlock = ^(int num){
        for(int i = 0;i<num;++i){
            printf("  {@} \n");
            printf("   |\n");
            printf("  \\|/\n ");
            printf("  |\n");
        }
    };
    roseBlock(3);
    int (^sumBlock) (int,int);
    sumBlock = ^(int value1,int value2){
        return value1 + value2;
    };
    NSLog(@"sum = %i",sumBlock(20,30));
//调用Block保存的代码
//block变量名(实参);
}
