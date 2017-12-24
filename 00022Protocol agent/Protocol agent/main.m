//
//  main.m
//  Protocol agent
//
//  Created by apple on 2017/12/23.
//  Copyright © 2017年 YuNuo. All rights reserved.

#import <Foundation/Foundation.h>
#import "Baby.h"
#import "Nanny.h"
int main(int argc, const char * argv[]) {
    Baby *b = [Baby new];
    Nanny *n = [Nanny new];
    b.nanny = n;
    [b food];
    [b sleepy];
}
