//
//  Person.h
//  class factory method
//
//  Created by apple on 2017/12/16.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Person : NSObject
@property int age;
+(instancetype)person;
+(instancetype)personwithAge :(int)age;
@end
