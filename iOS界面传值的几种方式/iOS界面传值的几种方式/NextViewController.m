//
//  NextViewController.m
//  iOS界面传值的几种方式
//
//  Created by 王璐 on 2018/12/6.
//  Copyright © 2018 Ove. All rights reserved.
//

#import "NextViewController.h"
#import "DefaultInstance.h"

@interface NextViewController ()

@property (nonatomic,strong)UITextField *textField;
@property (nonatomic,strong)UIButton *btn;

@end

@implementation NextViewController

#pragma mark - 懒加载
-(UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 200, 40)];
        _textField.textColor = [UIColor blackColor];
        _textField.borderStyle = UITextBorderStyleLine;
        
//        _textField.text = self.str;
//        _textField.text = [DefaultInstance sharedInstance].str;
//        _textField.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaults"];
    }
    
    return _textField;
}

-(UIButton *)btn {
    if (!_btn) {
        _btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 200, 40)];
        _btn.titleLabel.font = [UIFont systemFontOfSize:20];
        _btn.backgroundColor = [UIColor redColor];
        [_btn setTitle:@"跳转到页面一" forState: UIControlStateNormal];
        [_btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _btn;
}

- (void)btnClick {
//    [DefaultInstance sharedInstance].str = self.textField.text;
//    [[NSUserDefaults standardUserDefaults] setObject:self.textField.text forKey:@"tf"];
//    [[NSUserDefaults standardUserDefaults] synchronize];
    if ([self.delegate respondsToSelector:@selector(passValue:)]) {
//        [self.delegate passValue:self.textField.text];
    }
//    self.block(self.textField.text);
    [[NSNotificationCenter defaultCenter] postNotificationName:@"notify" object:nil userInfo:@{@"not": self.textField.text}];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.textField];
    [self.view addSubview:self.btn];
}



@end
