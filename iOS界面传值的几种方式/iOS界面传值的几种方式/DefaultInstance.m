//
//  DefaultInstance.m
//  iOS界面传值的几种方式
//
//  Created by 王璐 on 2018/12/6.
//  Copyright © 2018 Ove. All rights reserved.
//

#import "DefaultInstance.h"

@implementation DefaultInstance

+(instancetype)sharedInstance {
    static DefaultInstance *share = nil;
    
    if (share == nil) {
        share = [[DefaultInstance alloc] init];
    }
    
    return share;
}


@end
