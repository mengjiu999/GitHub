//
//  Babyprotocol.h
//  Protocol agent
//
//  Created by apple on 2017/12/23.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Baby;
@protocol Babyprotocol <NSObject>
    //喂食
-(void)feedFood:(Baby *)baby;
    //哄
-(void)coax:(Baby *)baby;

@end
