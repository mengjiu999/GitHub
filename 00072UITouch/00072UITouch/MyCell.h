//
//  MyCell.h
//  00072UITouch
//
//  Created by apple on 2018/4/6.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol MycellDelegate <NSObject>

@optional
-(void)didClickButton:(UIButton *)button;

@end

@interface MyCell : UITableViewCell


+(instancetype)cellWithtableView:(UITableView *)tableview;



@property(nonatomic,weak) id<MycellDelegate> delegate;
@end
