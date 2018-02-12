//
//  productView.h
//  00056Shopping Cart
//
//  Created by apple on 2018/2/12.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Products; 

@interface productView : UIView
//对外提供统一接口
/*
-(void)setImage :(NSString *)iconName;
-(void)setTitle :(NSString *)title;
 */
@property (nonatomic , strong) Products *products;
@end
