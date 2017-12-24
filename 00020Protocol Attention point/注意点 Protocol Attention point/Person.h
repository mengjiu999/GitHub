//
//  Person.h
//  注意点 Protocol Attention point
//
//  Created by apple on 2017/12/23.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocol.h"

@interface Person : NSObject <Protocol>
//在oc中一个类可以遵守多个协议
//在oc中一个类只有一个父类，也就是说oc只有单继承
@end
