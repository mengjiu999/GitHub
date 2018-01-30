//
//  main.m
//  NSMutableArray
//
//  Created by apple on 2018/1/30.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    //创建空的数组
    NSMutableArray *arrM = [NSMutableArray array];
//如何添加
    [arrM addObject:@"zhk"];
    //将数组中的元素取出来，加入到arrM中
    [arrM addObjectsFromArray:@[@"zhk",@"jyn"]];
    //将整个数组作为一个元素添加
    [arrM addObject:@[@"zhk",@"jyn"]];
//如何插入
    [arrM insertObject:@"zhk" atIndex:1];
//如何删除
    [arrM removeObject:0];
    
}
