//
//  main.m
//  Day2_3
//
//  Created by 苗乔伟 on 2017/12/11.
//  Copyright © 2017年 苗乔伟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Solider.h"
#import "Gun.h"
#import "Cilp.h"


/*
 #pragma 变量的名称，就会生成分割线，这对于只在main函数里面写的代码能起到一定的整理作用
 但是还是要用command + n分文件处理，这比这种用分割线更加直观，更加容易管理
 */
int main(int argc, const char * argv[]) {
    Solider *sp = [Solider new];
    //设定士兵的名字，身高，体重；
    sp->_name =@"博天真的好帅啊";
    sp->_height =1.80;
    sp->_weight =70;
    //创建一个枪的对象
    Gun *gp = [Gun new];
    //设定弹夹的数量
    gp->_clip=999;
    //创建一个弹夹的对象
    Cilp *cp = [Cilp new];
    //设定子弹的数量
    cp->_bullet = 87;
    //运行换弹夹
    [gp addClip];
    //运行换子弹
    [cp addBullet];
    return 0;
}
