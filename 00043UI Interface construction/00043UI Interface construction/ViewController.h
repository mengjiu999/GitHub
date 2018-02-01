//
//  ViewController.h
//  00043UI Interface construction
//
//  Created by apple on 2018/2/1.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
/*
 注意：
 1.默认情况下类中的属性是不能和storyboard或者xib中的对象联系起来
 2.如果想要联系起来，需要在引用类型前面加IBOutlet
 IBOutlet：
 1.是OC关键字
 2.没有实际意义
 3.作用：只有属性类型前加IBOutlet才能和storyboard或者xib中的对象联系起来
 */
@property (nonatomic,strong) IBOutlet UILabel *mylable;

@end

