//
//  main.m
//  00057plist
//
//  Created by apple on 2018/2/10.
//  Copyright © 2018年 YuNuo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.将数组保存为plist文件
        /*
        NSArray *names = @[@"zhk",@"zk"];
        BOOL flag = [names writeToFile:@"/Users/Desktop/names.plist" atomically:YES];
         */
       
        //2.将字典写入plist文件
        /*
        NSDictionary *dict = @{
                               @"name" : @"zhk",
                               @"height" : @"176"
                               };
        NSURL *url = [NSURL fileURLWithPath:@"/Users/Desktop/names.plist"];
        BOOL flag = [dict writeToURL:url atomically:YES];
         */
        
        //3.将一个数组，该数组中都是字典对象，写入plist文件
        NSArray *products = @[
                          @{@"icon" : @"liantiaobao",@"title" : @"链条包"},
                          @{@"icon" : @"shoutibao",@"title" : @"手提包"},
                          @{@"icon" : @"danjianbao",@"title" : @"单肩包"},
                          @{@"icon" : @"shuangjianbao",@"title" : @"双肩包"},
                          @{@"icon" : @"xiekuabao",@"title" : @"斜挎包"},
                          @{@"icon" : @"qianbao",@"title" : @"钱包"},
                          ];
        BOOL flag = [products writeToFile:@"/Users/apple/Desktop/products.plist" atomically:YES];
        if(flag){
            NSLog(@"写入成功");
        }else{
            NSLog(@"写入失败");
        }
    }
    return 0;
}
