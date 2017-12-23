//
//  Person.m
//  Custom construction method
//
//  Created by apple on 2017/12/14.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import "Person.h"

@implementation Person
-(NSString *)description{
    return [NSString stringWithFormat:@"age = %i,name = %@",_age,_name];
}
-(instancetype)init{
    if(self = [super init]){
        _age = 10;
    }
    return self;
}
-(instancetype)initWithAge:(int)age{
    if(self = [super init]){
        _age = age;
    }
    return self;
}
-(instancetype)initWithAge:(int)age andName:(NSString *)name{
    if(self = [super init]){
        _age = age;
        _name = name;
    }
        return self;
}
@end
