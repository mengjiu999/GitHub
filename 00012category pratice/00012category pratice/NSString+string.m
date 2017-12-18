//
//  NSString+string.m
//  00012category pratice
//
//  Created by apple on 2017/12/17.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import "NSString+string.h"

@implementation NSString (string)
+(int)countWithStr:(NSString *)str{
    int count = 0;
    for(int i =0;i < str.length;i++){
        unichar c = [str characterAtIndex:i];
        if(c >= '0' && c <= '9'){
            count++;
        }
    }
    return count;
}
@end
