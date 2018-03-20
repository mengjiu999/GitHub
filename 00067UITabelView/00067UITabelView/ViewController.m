//
//  ViewController.m
//  00067UITabelView
//
//  Created by apple on 2018/3/4.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *TableView;

//所有的车数据
@property (nonatomic, strong) NSArray *carGroups;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(NSArray *)carGroups{
    if(!_carGroups){
        CarGroup *group0 = [[CarGroup alloc] init];
        group0.header = @"德系品牌1";
        group0.footer = @"德系品牌lklklk";
        group0.cars = @[
                        [Car carWithName:@"奔驰" icon:@"图1片"],
                        [Car carWithName:@"宝马" icon:@"图片2"]
                        ];
        _carGroups = @[group0];
        }
    return _carGroups;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDateSource
//告诉TableView一共有多少组数据
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.carGroups.count;
}

//告诉TableView第几组有多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //取出第section组的模型
    CarGroup *group = self.carGroups[section];
    return group.cars.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell  *cell = [[UITableViewCell alloc] init];
    
    //设置cell右边显示的控件
    //accessoryView优先级 >
    //cell.accessoryView = [[UISwitch alloc] init];
    //设置cell右边的指示样式
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    //取出indexPath.section这组的组模型
    CarGroup *group = self.carGroups[indexPath.section];
    
    //取出对应的车模型
    Car *car = group.cars[indexPath.row];
    
    //设置数据
    cell.textLabel.text = car.name;
    cell.imageView.image = car.icon;
    
    cell.textLabel.text = @"";
    
    return cell;
}

//告诉tableView每一组的头部标题
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    //取出第section组的组模型
    CarGroup *group = self.carGroups[section];
    return group.header;
}

//告诉tableView每一组的尾部标题
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    
    //取出第section组的组模型
    CarGroup *group = self.carGroups[section];
    return group.footer;
}
@end
