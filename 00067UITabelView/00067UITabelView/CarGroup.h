//
//  CarGroup.h
//  00067UITabelViewTests
//
//  Created by apple on 2018/3/9.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarGroup : NSObject

//头部
@property (nonatomic, copy) NSString *header;

//尾部
@property (nonatomic, copy) NSString *footer;

//所有的车
@property (nonatomic, strong) NSArray *cars;
@end
