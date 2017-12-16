//
//  Student.m
//  Custom construction method
//
//  Created by apple on 2017/12/14.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import "Student.h"

@implementation Student
//-(instancetype)initWithAge:(int)age andName:(NSString *)name andNo:(int)no{
//    if(self = [super init]){
//        [self setAge:age];
//        [self setName:name];
//        _no = no;
//    }
//    return self;
//}
//自己的事情自己做
-(instancetype)initWithAge:(int)age andName:(NSString *)name andNo:(int)no{
    if(self = [super initWithAge:age andName:name]){
        _no = no;
    }
    return self;
}
-(NSString *)description{
    return [NSString stringWithFormat:@"age = %i,name = %@,no = %i",[self age],[self name],_no];
}
@end
