//
//  Person.h
//  Category
//
//  Created by apple on 2017/12/16.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
//分类
//方法的声明：
//方法的实现：

//所以通过分类给某一个类扩充方法，也分为声明和实现两部分

//分类的声明
//@interface ClassName (CategoryName)
//NewMethod://在类别中添加方法
//不允许在类别中添加变量
//@end

//ClassName:需要给哪个类扩充方法
//CategoryName:分类的名称
//NewMethod:扩充的方法

//分类的实现
//@implementation ClassName (CategoryName)
//NewMethod
//@end

//ClassName:需要给哪个类扩充方法
//CategoryName:分类的名称
//NewMethod:扩充的方法
@interface Person : NSObject

@end
