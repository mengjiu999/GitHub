//
//  Student.m
//  Protocol Practice
//
//  Created by apple on 2017/12/24.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)findHouse{
    NSLog(@"学生想找房子");
    //通知代理帮他找房子
    if([self.delegate respondsToSelector:@selector(StudentFindHouse:)]){
        [self.delegate StudentFindHouse:self];
    }
}
@end
