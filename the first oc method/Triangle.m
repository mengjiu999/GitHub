//
//  Triangle.m
//  An isosceles triangle
//
//  Created by apple on 2017/12/10.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle
+(void)triangle{
    for (int i = 1; i <= 4; i++) {//输出四行的等腰三角形
        for (int j = 0; j <= 4-i; j++) {
            printf(" ");
        }
        for (int j = 1; j <= 2*i-1; j++) {
        printf("*");
        }
        printf("\n");
    }
}

@end
