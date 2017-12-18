//
//  main.m
//  Category
//
//  Created by apple on 2017/12/16.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+Student.h"
int main(int argc, const char * argv[]) {
    Person *p = [[Person alloc]init];
    [p playFootball];
    
    return 0;
}
