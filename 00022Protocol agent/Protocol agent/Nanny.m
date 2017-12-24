//
//  Nanny.m
//  Protocol agent
//
//  Created by apple on 2017/12/23.
//  Copyright © 2017年 YuNuo. All rights reserved.
//
#import "Baby.h"
#import "Nanny.h"

@implementation Nanny
    //喂食
-(void)feedFood:(Baby *)baby{
    baby.hungry -= 10;
    NSLog(@"喂食 %i",baby.hungry);
}
    //哄
-(void)coax:(Baby *)baby{
    baby.sleep += 10;
    NSLog(@"哄睡 %i",baby.sleep);
}
@end
