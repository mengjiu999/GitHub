//
//  MyCell.m
//  00073UITableView
//
//  Created by apple on 2018/4/6.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "MyCell.h"
@interface MyCell ()

@property (nonatomic ,weak) UIImageView *iconImageView;
@end
@implementation MyCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        UIImageView *iconImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:iconImageView];
        self.iconImageView = iconImageView;
        self.iconImageView.backgroundColor = [UIColor redColor];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    self.iconImageView.frame = CGRectMake(0, 80, 80, 80);
}
@end
