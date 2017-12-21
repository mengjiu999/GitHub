//
//  main.m
//  Block
//
//  Created by apple on 2017/12/21.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

void printRose(){
    printf("  {@} \n");
    printf("   |\n");
    printf("  \\|/\n ");
    printf("  |");
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
    void (*roseP)();
    roseP  = printRose;
    roseP();
    
    
}
