//
//  Person.h
//  SEL type
//
//  Created by apple on 2017/12/16.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;
+(void)test;
-(void)demo;
-(void)signalWithNumber:(int)number;
-(void)signalWithNumber:(NSString *)number andContent:(NSString *)content;
//调用传入对象的指定方法
-(void)makeObject:(id)obj andSel:(SEL)sel;
@end
