//
//  Person.h
//  00065KVC
//
//  Created by apple on 2018/2/20.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger *age;

-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)personWithDict:(NSDictionary *)dict;

-(void)printHeight;
@end
