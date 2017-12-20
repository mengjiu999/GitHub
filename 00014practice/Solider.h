//
//  Solider.h
//  Day2_3
//
//  Created by 苗乔伟 on 2017/12/11.
//  Copyright © 2017年 苗乔伟. All rights reserved.
//

/*
 事物名称：士兵
 属性：姓名，身高，体重；
 行为：开枪；
 */
#import <Foundation/Foundation.h>
#import "Gun.h"
#import "Cilp.h"

@interface Solider : NSObject
{
    @public
    NSString * _name;
    double _height;
    double _weight;
}
//就是将枪换弹夹的功能赋给人来实现
//视频中与我的代码有一定的不同，要反复的看。

-(void)fire:(Gun *)gun;
@end
