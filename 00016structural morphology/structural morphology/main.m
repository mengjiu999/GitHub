//
//  main.m
//  structural morphology
//
//  Created by apple on 2017/12/21.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Soldier : NSObject
{
    @public
    NSString * _name;
    double _height;
    double _weight;
}
-(void)fire;
@end
@implementation Soldier
-(void)fire{
    NSLog(@"打了一枪");
}
@end
int main(int argc, const char * argv[]) {
    Soldier *sp = [Soldier new];
    sp->_name = @"person";
    sp->_height = 1.88;
    sp->_weight = 140;
    [sp fire];
    return 0;
}
