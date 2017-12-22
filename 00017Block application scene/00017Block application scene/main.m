//
//  main.m
//  00017Block application scene
//
//  Created by apple on 2017/12/22.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
void goToWork(void (^workBlock)())
{
    NSLog(@"起床");
    NSLog(@"穿衣服");
    NSLog(@"出门");
    //不一样
    workBlock();
    NSLog(@"回家");
    NSLog(@"洗漱");
    NSLog(@"睡觉");
}
void goToWorkDay1(){
    goToWork(^{
        NSLog(@"上课");
    });
}
void goToWorkDay2(){
    goToWork(^{
        NSLog(@"培训");
    });
}
void goToWorkDay3(){
    goToWork(^{
        NSLog(@"画画");
    });
}
//当发现代码的前面和后面都一样时，这时候就可以使用block
int main(int argc, const char * argv[]) {
    goToWorkDay1();
}
