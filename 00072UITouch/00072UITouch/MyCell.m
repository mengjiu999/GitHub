//
//  MyCell.m
//  00072UITouch
//
//  Created by apple on 2018/4/6.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "MyCell.h"



@interface MyCell()

@property(nonatomic,strong)UIButton *button;

@end

@implementation MyCell

+(instancetype)cellWithtableView:(UITableView *)tableview
{
    static NSString *ID = @"cell";
    MyCell *cell = [tableview dequeueReusableCellWithIdentifier:ID];
    if(!cell)
    {
        cell = [[MyCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.textLabel.font = [UIFont systemFontOfSize:13.0];
    }
    return cell;
    
}


//重写布局
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self)
    {
        self.button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, self.frame.size.height)];
        [self.button setTitle:@"我是按钮点我" forState:UIControlStateNormal];
        [self.button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        self.button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        self.button.titleLabel.font = [UIFont systemFontOfSize:12.0];
        [self.contentView addSubview:self.button];
        [self.button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}




#pragma mark - 按钮点击事件，通过代理模式响应
-(void)btnClick:(UIButton *)btn
{
    [self.delegate didClickButton:btn];
}


@end
