//
//  Student.h
//  Custom construction method
//
//  Created by apple on 2017/12/14.
//  Copyright © 2017年 YuNuo. All rights reserved.
//

#import "Person.h"

@interface Student : Person
@property int no;//学号
-(instancetype)initWithAge:(int)age andName:(NSString *)name andNo:(int)no;

@end
