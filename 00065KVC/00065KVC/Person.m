//
//  Person.m
//  00065KVC
//
//  Created by apple on 2018/2/20.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "Person.h"

@implementation Person
{
    CGFloat _height;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"name：%@ age:%ld height:%.2f",_name,_age,_height];
}

-(instancetype)initWithDict:(NSDictionary *)dict{
    if(self = [super init]){
        /*
        self.age = [dict[@"age"] integerValue];
        self.name = dict[@"name"];
        _height = [dict[@"height"] doubleValue];
         */
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype)personWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}

-(void)printHeight{
    NSLog(@"height:%.2f",_height);
}

@end
