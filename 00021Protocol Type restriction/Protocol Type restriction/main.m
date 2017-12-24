//
//  main.m
//  Protocol Type restriction
//
//  Created by apple on 2017/12/23.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Friend.h"
#import "FriendCondition.h"
int main(int argc, const char * argv[]) {
    Person *p = [Person new];
//1.协议的第一个应用场景，可以将协议写在数据类型的右边，明确的标注如果想给该变量赋值，那么该对象必须遵守某个协议
    Friend<FriendCondition> *f = [Friend new];

    p.friend = f;
    [p show];
}
