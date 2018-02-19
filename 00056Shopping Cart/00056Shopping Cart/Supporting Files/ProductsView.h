//
//  ProductsView.h
//  00056Shopping Cart
//
//  Created by apple on 2018/2/19.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Products;

@interface ProductsView : UIView

//快速创建类方法
+(instancetype)productsView;

//对外提供模型接口
@property (nonatomic,strong) Products *products;
@end
