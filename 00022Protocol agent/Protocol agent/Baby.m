//
//  Baby.m
//  Protocol agent
//
//  Created by apple on 2017/12/23.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import "Baby.h"
#import "Nanny.h"
@implementation Baby
    //饿了
-(void)food{
    _hungry += 5;
    NSLog(@"要吃东西 %i",self.hungry);
    //通知保姆
    [self.nanny feedFood:self];
}
    //困了
-(void)sleepy{
    _sleep += 5;
    NSLog(@"困了 %i",self.sleep);
    //通知保姆
    [self.nanny coax:self];
}
@end
