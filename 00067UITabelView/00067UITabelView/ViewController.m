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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDateSource
//告诉TableView一共有多少组数据
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

//告诉TableView第几组有多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(section == 0){
        return 2;
    }else{
        return 3;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    indexPath.section == 2;
    indexPath.row == 1;
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = @"通用";
    return cell;
}
@end
