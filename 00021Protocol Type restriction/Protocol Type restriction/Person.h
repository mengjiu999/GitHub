//
//  Person.h
//  Protocol Type restriction
//
//  Created by apple on 2017/12/23.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Friend.h"
@interface Person : NSObject
//注意：类型限定是写在数据类型右边的
@property (nonatomic,strong) Friend<FriendCondition> *friend;
-(void)show;
@end
