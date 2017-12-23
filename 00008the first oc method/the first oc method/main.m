//
//  main.m
//  the first oc method
//
//  Created by apple on 2017/12/10.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
//枚举

@interface Iphone : NSObject
{
    @public
    float _model;//型号 0
    int _cpu;//cpu
    double _size;//尺寸
    int _color;//颜色 0代表黑色，1代表白色，2代表土豪金
    
}
//计算器
//如果你不想每次使用方法都需要创建对象开辟存储空间
//并且如果该方法中没有使用属性（成员变量），那么你可以把这个方法定义为类方法
//对象方法用对象调用，类方法用类调用
//类方法的写法和对象方法一模一样，除了前面的-号不同以外，只需要将对象方法的-号换成+号就定义了一个对类方法
+(int)sumWithValue1 :(int)value1 andValue2:(int)value2;
-(void)about;
-(void)description;
+(NSString *)colorWithNumber:(int)number;
/*
类方法和对象方法的区别
 1.类方法必须用类调用，对象方法必须用对象调用
 2.对象方法可以直接访问属性（成员变量），类方法不可以
 3。类方法的有点：调用类方法的效率比调用对象方法高
 4.类方法和对象方法可以进行相互调用
     (1)对象方法中可以直接调用类方法
     (2)可以类方法中间接调用对象方法
     (3)类方法可以直接调用其他类方法
     (4)对象方法可以直接调用对象方法
类方法应用场景
 如果方法中没有使用属性，那么可以通过类方法调用类方法
 类方法执行效率比对象方法高
 
 类方法一般用于定义工具方法
     字符串查找
     文件操作
     数据库操作
 */
@end
@implementation Iphone
//注意如果声明时类方法，那么实现也是类方法
+(int)sumWithValue1 :(int)value1 andValue2:(int)value2{
    return value1 + value2;
}
-(void)about{
    NSLog(@"sum =%i",[Iphone sumWithValue1:30 andValue2:20]);
}
-(void)description{
    //0代表黑色，1代表白色，2代表土豪金
    NSString *name = [Iphone colorWithNumber:_color];
    NSLog(@"model =%f,cpu =%i,size = %f,color =%@",_model,_cpu,_size,name);
}
+(NSString *)colorWithNumber:(int)number{
    NSString *name;
    switch(number){
        case 0:
            name =@"黑色";
            break;
        case 1:
            name =@"白色";
            break;
        case 2:
            name =@"土豪金";
            break;
        default:
            name =@"无";
            break;
            
    }
    return name;
}
@end
int main(int argc, const char * argv[]) {
    Iphone *p = [Iphone new];
    [p about];
    [Iphone sumWithValue1:20 andValue2:30];
    p->_color = 0;
    p->_size = 1;
    p->_cpu = 4;
    p->_model =1;
    [p description];
    return 0;
}
