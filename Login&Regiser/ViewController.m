//
//  ViewController.m
//  Login&Regiser
//
//  Created by Qianfeng on 15/12/29.
//  Copyright © 2015年 Hongyun.Zhao. All rights reserved.
//

#import "ViewController.h"

#import "RootViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *passWord;

//@property (nonatomic,copy) NSMutableArray *data;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor grayColor];
    _model=[CollModel new];
}
- (IBAction)loginAction:(id)sender {
//---------===
    ///ooooooooooooo
    NSLog(@"%@::%@",_model.userNam,_model.passWor);
    if(_userName.text==self.model.userNam && _passWord.text==self.model.passWor) {
        RootViewController *rvc=[RootViewController new];
        [self.navigationController pushViewController:rvc animated:YES];
    }else{
        NSLog(@"请输入正确的用户名和密码");
    }
    
}
- (IBAction)registerAction:(id)sender {
    if(_userName.text.length<=0 || _passWord.text.length<=0){
        NSLog(@"请输入要用户名和密码进行注册");
    }else{
        
        _model.userNam=_userName.text;
        _model.passWor=_passWord.text;
        NSLog(@"注册成功");
        NSLog(@"%@ %@",_model.userNam,_model.passWor);
       
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
