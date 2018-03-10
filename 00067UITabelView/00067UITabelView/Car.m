//
//  Car.m
//  00067UITabelView
//
//  Created by apple on 2018/3/9.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "Car.h"

@implementation Car
+(instancetype)carWithName:(NSString *)name icon:(NSString *)icon{
    Car *car = [[Car alloc] init];
    car.name = name;
    car.icon = icon; 
    return car;
}
@end
