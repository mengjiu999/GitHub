//
//  ViewController.m
//  00061Recorder
//
//  Created by apple on 2018/2/18.
//  Copyright © 2018年 YuNuo. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface Recorder : NSObject

//开始录音
-(void)startRecording :(NSURL *)url;
//暂停
-(void)pauseRecording;
//继续
-(void)startRecordAfterPause;
//停止录音
-(void)stopRecording;


@end
