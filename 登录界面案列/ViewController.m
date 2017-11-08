//
//  ViewController.m
//  登录界面案列
//
//  Created by zh dk on 2017/8/22.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _nameLable = [[UILabel alloc] init];
    _nameLable.frame = CGRectMake(20, 60, 80, 40);
    _nameLable.text = @"用户名:";
    _nameLable.font = [UIFont systemFontOfSize:14];
    _nameLable.textAlignment = NSTextAlignmentLeft;
    
    _pwdLable = [[UILabel alloc] init];
    _pwdLable.frame = CGRectMake(20, 140, 80, 40);
    _pwdLable.text = @"密码:";
    _pwdLable.font = [UIFont systemFontOfSize:14];
    _pwdLable.textAlignment = NSTextAlignmentLeft;
    
    _nameText = [[UITextField alloc] init];
    _nameText.frame = CGRectMake(120, 60, 180, 40);
    _nameText.placeholder=@"请输入用户名";
    _nameText.borderStyle = UITextBorderStyleRoundedRect;
    
    _pwdText = [[UITextField alloc] init];
    _pwdText.frame = CGRectMake(120, 140, 180, 40);
    _pwdText.placeholder=@"请输入用户名";
    _pwdText.borderStyle = UITextBorderStyleRoundedRect;
    _pwdText.secureTextEntry=YES;
    
    _loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _loginBtn.frame = CGRectMake(120, 200, 80, 40);
    [_loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    _loginBtn.backgroundColor = [UIColor greenColor];
    [_loginBtn addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    _registerBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _registerBtn.frame = CGRectMake(120, 250, 80, 40);
    _registerBtn.backgroundColor = [UIColor greenColor];
    [_registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    [_registerBtn addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_nameLable];
    [self.view addSubview:_nameText];
    [self.view addSubview:_pwdText];
    [self.view addSubview:_pwdLable];
    [self.view addSubview:_loginBtn];
    [self.view addSubview:_registerBtn];
}
//登录事件函数
-(void) pressLogin{
    NSString *strName= @"zdk";
    NSString *strPwd= @"123456";
    NSString *textName = _nameText.text ;
    NSString *textPwd =_pwdText.text;
    if ([textName isEqualToString:strName] && [textPwd isEqualToString:strPwd] ) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"验证登录成功" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
        [alertView show];
    }
    else{
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"登录失败，用户名或者密码不正确" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
            [alertView show];
    
    }
}
//注册事件函数
-(void) pressRegister{
    
    NSLog(@"注册");
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //回收键盘对象
    [_nameText resignFirstResponder];
    [_pwdText resignFirstResponder];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
