//
//  Gun.h
//  Day2_3
//
//  Created by 苗乔伟 on 2017/12/11.
//  Copyright © 2017年 苗乔伟. All rights reserved.
//

/*
 事物名称：士枪
 属性：型号；
 行为：上弹夹；
 */
#import <Foundation/Foundation.h>

@interface Gun : NSObject
{
    @public
    int _clip;
}
-(void)addClip;
@end
