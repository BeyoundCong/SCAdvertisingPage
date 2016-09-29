//
//  SCJumpViewController.m
//  shareDemo
//
//  Created by 翟少聪 on 16/9/29.
//  Copyright © 2016年 Nice. All rights reserved.
//

#import "SCJumpViewController.h"
#import "SCPageViewHeader.h"

@interface SCJumpViewController ()

@property (nonatomic, strong) SCPageView *pageView;

@end

@implementation SCJumpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self pageViewInit];
}

- (void)pageViewInit {
    _pageView = [[SCPageView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, KScreenHeight)];
    // _pageView.pageURLString = @""; 这个里面可以写url的连接  动态改变广告页面
    _pageView.blockSelect = ^{
        NSLog(@"广告页被点击。。。跳转下载的地址。或者产品的官网都可以的！！！");
    };
    [self.view addSubview:_pageView];
    
    WS(weakSelf);
    SCCountdownLabel *countdownLabel = [[SCCountdownLabel alloc] initWithFrame:CGRectMake(KScreenWidth - 80, 20, 60, 30)];
    countdownLabel.blockNewViewController = ^{
        [weakSelf removerSCPageView];
    };
    [_pageView addSubview:countdownLabel];
}

- (void)removerSCPageView {
    WS(weakSelf);
    [UIView animateWithDuration:0.5 animations:^{
        weakSelf.pageView.alpha = 0.5;
    } completion:^(BOOL finished) {
        if (weakSelf.blockMainViewController) {
            weakSelf.blockMainViewController();
        }
    }];
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
