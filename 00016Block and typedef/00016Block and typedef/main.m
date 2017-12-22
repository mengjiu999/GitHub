//
//  main.m
//  00016Block and typedef
//
//  Created by apple on 2017/12/22.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
int sum(int value1,int value2){
    return value1 + value2;
}
int minus(int value1,int value2){
    return value1 - value2;
}
typedef int(*calculte) (int,int);
//注意：利用typedef给Block起别名，和指向函数的指针一样，block变量的名称就是别名
typedef int(^calculteBlock) (int,int);
int main(int argc, const char * argv[]) {
//    int(*sumP)(int,int);
//    sumP = sum;
//    calculte sumP = sum;
//    NSLog(@"sum = %i",sumP(20,10));
//    calculte minusP = minus;
//    NSLog(@"sum = %i",minus(20,10));
//    int(^sumBlock)(int,int);
    calculteBlock sumBlock = ^(int value1,int value2){
        return value1 + value2;
    };
    NSLog(@"sum = %i",sumBlock(20,10));
//    int(^minusBlock)(int,int);
    calculteBlock minusBlock = ^(int value1,int value2){
        return value1 - value2;
    };
    NSLog(@"sum = %i",minusBlock(20,10));
}
