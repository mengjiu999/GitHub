//
//  Person.m
//  Protocol Type restriction
//
//  Created by apple on 2017/12/23.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)show{
//注意：虽然在接受某一个对象的时候，对这个对象进行了类型限定（限定他必须实现某个协议），但是并不意味着这个对象就真正实现了该方法，所以每次在调用对象的协议方法时应进行一次验证
    if([self.friend respondsToSelector:@selector(cooking)]){
        [self.friend cooking];
    }
    if([self.friend respondsToSelector:@selector(washing)]){
        [self.friend washing];
    }
    if([self respondsToSelector:@selector(job)]){
        [self.friend job];
    }
    [self.friend cooking];
    [self.friend washing];
    [self.friend job];
}
@end
