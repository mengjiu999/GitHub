//
//  ViewController.m
//  00061Recorder
//
//  Created by apple on 2018/2/18.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RecordFile;
//传值代理
@protocol RecordViewControllerDelegate <NSObject>

- (void)sendRecordFile :(RecordFile *)file;

@end

@interface RecordViewController : UIViewController

//代理
@property(nonatomic,strong)id<RecordViewControllerDelegate> delegate;

@end
