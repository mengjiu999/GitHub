//
//  main.m
//  Custom construction method
//
//  Created by apple on 2017/12/14.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
int main(int argc, const char * argv[]) {
    Person *p = [[Person alloc] initWithAge:20];
    NSLog(@"%@",p);
    Person *p1 = [[Person alloc] initWithAge:30];
    NSLog(@"%@",p1);
    Person *p2 = [[Person alloc] initWithAge:20 andName:@"ztj"];
    NSLog(@"%@",p2);
    Student *stu = [[Student alloc]initWithAge:30 andName:@"ztj" andNo:1];
    NSLog(@"%@",stu);
}
