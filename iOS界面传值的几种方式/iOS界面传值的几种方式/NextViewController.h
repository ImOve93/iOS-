//
//  NextViewController.h
//  iOS界面传值的几种方式
//
//  Created by 王璐 on 2018/12/6.
//  Copyright © 2018 Ove. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol passValueDelegate <NSObject>

- (void)passValue:(NSString *)str;

@end


@interface NextViewController : UIViewController

//@property (nonatomic,copy)NSString *str;
@property (nonatomic,weak)id<passValueDelegate> delegate;

@property (nonatomic,copy) void (^block)(NSString *);

@end

NS_ASSUME_NONNULL_END
