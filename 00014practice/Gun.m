//
//  Gun.m
//  Day2_3
//
//  Created by 苗乔伟 on 2017/12/11.
//  Copyright © 2017年 苗乔伟. All rights reserved.
//

#import "Gun.h"

@implementation Gun

-(void)addClip{
    _clip --;
    NSLog(@"换了个弹夹，还有%i个剩余",_clip);
}

@end
