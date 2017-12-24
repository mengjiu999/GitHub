//
//  Protocol.h
//  注意点 Protocol Attention point
//
//  Created by apple on 2017/12/23.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Protocol <NSObject>
//协议只能声明方法不能声明属性

//方法声明列表
-(void)playBasketball;
-(void)playBaseball;
//注意：如果没有使用任何关键字修饰协议中的方法，那么该方法默认是required的
//如果协议中的方法是required的，而遵守协议类又没有实现该方法，那么会报一个警告
@optional//可选
//如果协议中的方法是optional的，而遵守协议类又没有实现该方法，那么不会报警告
-(void)playFootball;
//用于程序员之间交流，并不能严格的控制方法必须实现
@end
