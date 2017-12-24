//
//  Baby.h
//  Protocol agent
//
//  Created by apple on 2017/12/23.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Babyprotocol.h"
@class Nanny;
@interface Baby : NSObject
//饥饿程度

@property (nonatomic,assign) int hungry;
//困意
@property (nonatomic,assign) int sleep;
//饿了
-(void)food;
//困了
-(void)sleepy;
//让婴儿拥有一个保姆
@property (nonatomic,assign) Nanny *nanny;
//@property (nonatomic,assign) id<Babyprotocol> nanny;
    
@end
