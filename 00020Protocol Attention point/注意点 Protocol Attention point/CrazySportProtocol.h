//
//  CrazySportProtocol.h
//  注意点 Protocol Attention point
//
//  Created by apple on 2017/12/23.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocol.h"
//oc中的协议可以遵守其他协议，只要这个协议遵守了其他协议，那么这个协议就会自动包含其他协议的声明
@protocol CrazySportProtocol <Protocol>
-(void)jumping;
@end
