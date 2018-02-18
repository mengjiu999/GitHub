//
//  RecordFile.h
//  Recorder
//
//  Created by apple on 2018/2/18.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecordFile : UIView
@property(nonatomic,copy)NSString *mainName;
@property(nonatomic,copy)NSString *createTime;
@property(nonatomic,copy)NSString *audioLength;
@property(nonatomic,copy)NSString *fileURL;

-(instancetype)initWithMainName :(NSString *)mainName andCreateTime :(NSString *)createTime andAudioLength :(NSString *)audioLength andFileURL :(NSString *)url;

@end
