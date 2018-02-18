//
//  ListTableViewCell.m
//  Recorder
//
//  Created by apple on 2018/2/18.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ListTableViewCell.h"

@implementation ListTableViewCell
-(void)awakeFromNib{
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

+(instancetype)ListTabelViewCell :(UITableView *)tabelView :(NSString *)identifier{
    //注册cell
    [tabelView registerNib:[UINib nibWithNibName:@"ListTableViewCell" bundle:nil] forCellReuseIdentifier:identifier];
    ListTableViewCell *cell = [[[NSBundle mainBundle]loadNibNamed:@"ListTableViewCell" owner:nil options:nil] firstObject];
    return cell;
}


@end
