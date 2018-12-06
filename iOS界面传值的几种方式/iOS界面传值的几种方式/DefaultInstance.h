//
//  DefaultInstance.h
//  iOS界面传值的几种方式
//
//  Created by 王璐 on 2018/12/6.
//  Copyright © 2018 Ove. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DefaultInstance : NSObject
@property (nonatomic,strong) NSString *str;

+(instancetype)sharedInstance;
@end

NS_ASSUME_NONNULL_END
