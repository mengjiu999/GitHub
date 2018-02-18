//
//  ViewController.m
//  00061Recorder
//
//  Created by apple on 2018/2/18.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *mainLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *recLength;

+(instancetype)listTableViewCell :(UITableView *)tableView :(NSString *)identifier;

@end
