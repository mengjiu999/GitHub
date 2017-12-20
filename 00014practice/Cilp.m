//
//  Cilp.m
//  Day2_3
//
//  Created by 苗乔伟 on 2017/12/11.
//  Copyright © 2017年 苗乔伟. All rights reserved.
//

#import "Cilp.h"

@implementation Cilp
-(void)addBullet{
    _bullet --;
    NSLog(@"换了个子弹，还有%i发子弹剩余",_bullet);
}
@end
