//
//  main.m
//  Protocol Practice
//
//  Created by apple on 2017/12/24.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "LinkHome.h"
int main(int argc, const char * argv[]) {
    Student *stu = [Student new];
    LinkHome *l = [LinkHome new];
    stu.delegate = l;
    [stu findHouse];
}
