//
//  main.m
//  第一个oc类
//
//  Created by apple on 2017/12/8.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Iphone : NSObject{
    @public
    double _model;//型号 0
    int _color;// 颜色 0
    int _cpu;//cpu 0
    double _size;//尺寸 0
}
//行为
/*
 oc中的行为和c语言中的函数一样，都是用来保存一段特定功能的代码
 c语言中定义一个函数，分为声明和实现
 oc中定义一个方法也分为声明和实现，声明写在@interface中，实现写在@implementation
 
 编写c语言函数的规律：1.确定函数名称 2.确定形参 3.确定返回值类型 4.确定返回值类型
 编写oc方法也有规律：规律和c语言一样
 */
//c语言的函数分为两种：内函数和外部函数
//oc中的方法也分为两种：类方法和对象方法
//类方法只能用类名调用，对象方法只能用对象调用
//oc中的类方法用+表示，对象方法用-表示

//void about()
//{
//  printf("model = color = cpu = size");
//}
//注意，oc方法中没有形参不需要写（），而是直接写一个;
//为什么oc中没有形参不需要写（）呢？因为oc中（）有特殊用途，oc方法中的（）是用来括住函数类型的
-(void)about;
-(char *)loadMessage;
//有返回值有参数的，打电话
//注意：oc中的方法如果有参数，那么每个参数的数据类型前面必须加上一个:
//注意：当前这个有参数的方法的方法名称是signal :
//：也是方法名称的一部分
-（int）signal:(int)number;
//有参数并且有多个参数的发短信
//下面这个方法名称为sendMessage::
-(int)sendMessageWithNumber:(int)number andContent:(char *)content;
//为了提高阅读性，oc方法允许我们给每一个参数添加一个标签来说明当前参数的含义
//注意标签也是方法名的一部分
//方法名是sendMessageWithNumber: andContent:
@end
@implementation Iphone
-(void)about{
     //如果在对象方法中想访问该对象的属性，可以直接用_属性名称即可
     NSLog(@"颜色 =%i,cpu =%i,型号 =%f,尺寸 =%f",_color,_cpu,_model,_size);
}

/*
 c语言的函数：
 没有返回值没有参数的
 有返回值没有参数的
 有返回值有参数的
 没有返回值有参数的
 */
//有返回值没有参数的，读取信息
-(char *)loadMessage{
    return "Hello World";
}
//有返回值有参数的，打电话
-（int）signal :(int)number{
    NSLog(@"打电话给=%i",number);
    return 0;
}
-(int)sendMessageWithNumber:(int)number andContent:(char *)content{
    NSLog(@"发短信给%i,内容是%s",number,content);
    return 1;
}
@end

int main(int argc, const char * argv[]) {
    Iphone *p = [Iphone new];
    p->_color = 0;
    p->_cpu = 1;
    p->_model = 3.5;
    p->_size = 4;
    [p （int）signal:111];
    [p sendMessageWithNumber:11 andContent:"luck"];
    //如果给对象发送消息（如果调用对象方法）
    [p about];
    //[对象 消息名称（方法名称）]
    //注意：oc中的NSLog对c语言的字符串支持不是很好，如果返回的是中文的c语言字符串可能输出的是乱码，或者什么也不输出
    
    return 0;
}
