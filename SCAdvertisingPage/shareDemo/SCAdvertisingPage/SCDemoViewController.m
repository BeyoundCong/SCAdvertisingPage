//
//  SCDemoViewController.m
//  shareDemo
//
//  Created by MiYa-ShaoCong on 2017/6/13.
//  Copyright © 2017年 Nice. All rights reserved.
//

#import "SCDemoViewController.h"
#import "ViewController.h"

@interface SCDemoViewController ()

@end

@implementation SCDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.title = @"跳转的页面";
    
    self.navigationItem.hidesBackButton = YES;
    
    UIBarButtonItem *leftBarItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(onClickedOKbtn)];
    self.navigationItem.leftBarButtonItem = leftBarItem;
    
}

- (void)onClickedOKbtn {
    
    UIWindow *window = [UIApplication sharedApplication].windows[1];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] init]];
    window.rootViewController = nav;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
