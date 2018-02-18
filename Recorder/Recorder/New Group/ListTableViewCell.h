//
//  ListTableViewCell.h
//  Recorder
//
//  Created by apple on 2018/2/18.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListTableViewCell : UITableViewCell
//新录音
@property (weak, nonatomic) IBOutlet UILabel *mainLabel;
//日期
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
//录音时长
@property (weak, nonatomic) IBOutlet UILabel *recLength;

+(instancetype)ListTabelViewCell :(UITableView *)tabelView :(NSString *)identifier;

@end
