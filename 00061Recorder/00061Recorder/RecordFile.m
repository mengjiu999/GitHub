//
//  ViewController.m
//  00061Recorder
//
//  Created by apple on 2018/2/18.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import "RecordFile.h"

@implementation RecordFile
-(instancetype)initWithMainName :(NSString *)mainName andCreateTime :(NSString *)createTime andAudioLength :(NSString *)audioLength andFileURL:(NSString *)url{
    RecordFile *file = [[RecordFile alloc] init];
    file.mainName = mainName;
    file.createTime = createTime;
    file.audioLength = audioLength;
    file.fileURL = url;
    return file;
}

@end
