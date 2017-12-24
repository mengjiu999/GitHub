//
//  Student.h
//  Protocol Practice
//
//  Created by apple on 2017/12/24.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudentProtocol.h"
@interface Student : NSObject
//找房子
-(void)findHouse;
@property (nonatomic,strong) id<StudentProtocol> delegate;
@end
