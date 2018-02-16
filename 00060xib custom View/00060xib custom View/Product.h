//
//  Product.h
//  00060xib custom View
//
//  Created by apple on 2018/2/14.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Product : UIView
-(void)setIcon :(NSString *)iconName;
-(void)setTitle :(NSString *)title;

+(instancetype)product;
@end
