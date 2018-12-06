//
//  ViewController.m
//  iOS界面传值的几种方式
//
//  Created by 王璐 on 2018/12/6.
//  Copyright © 2018 Ove. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()

@property (nonatomic,strong)UILabel *label;
@property (nonatomic,strong)UIButton *btn;

@end

@implementation ViewController

#pragma mark - 懒加载
- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 40)];
        _label.backgroundColor = [UIColor blackColor];
        _label.textColor = [UIColor whiteColor];
        _label.font = [UIFont systemFontOfSize:20];
    }
    
    return _label;
}

- (UIButton *)btn {
    if (!_btn) {
        _btn = [UIButton buttonWithType:UIButtonTypeSystem];
        _btn.frame = CGRectMake(100, 300, 200, 40);
        [_btn setTitle:@"跳转到页面二" forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor  whiteColor] forState:UIControlStateNormal];
        _btn.backgroundColor = [UIColor redColor];
        
        [_btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _btn;
}

#pragma mark - btn 按钮点击事件
- (void)btnClick {
    NextViewController *nextVC = [[NextViewController alloc] init];
    [self presentViewController:nextVC animated:YES completion:nil];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.label];
    [self.view addSubview:self.btn];
}


@end
