//
//  Person.m
//  SEL type
//
//  Created by apple on 2017/12/16.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import "Person.h"

@implementation Person
+(void)test{
    NSLog(@"test");
}
-(void)demo{
    NSLog(@"demo");
}
-(void)signalWithNumber:(int)number{
    NSLog(@"number = %i",number);
}
-(void)signalWithNumber:(NSString *)number andContent:(NSString *)content{
    NSLog(@"number = %@,content = %@",number,content);
}
-(void)makeObject:(id)obj andSel:(SEL)sel{
    [obj performSelector:sel];
}
@end
