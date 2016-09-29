//
//  SCCountdownLabel.m
//  shareDemo
//
//  Created by 翟少聪 on 16/9/29.
//  Copyright © 2016年 Nice. All rights reserved.
//

#import "SCCountdownLabel.h"

@interface SCCountdownLabel()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation SCCountdownLabel

- (void)dealloc {
    
    
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.clipsToBounds = YES;
        self.layer.cornerRadius = 16;
        self.layer.shouldRasterize = YES;
        self.layer.rasterizationScale = [UIScreen mainScreen].scale;
        self.userInteractionEnabled = YES;
        self.backgroundColor = [UIColor clearColor];
        self.textAlignment = NSTextAlignmentCenter;
        self.text = @"5秒后跳转";
        self.textColor = [UIColor whiteColor];
        self.font = [UIFont systemFontOfSize:10];
        self.layer.borderColor = [UIColor whiteColor].CGColor;
        self.layer.borderWidth = 1;
        
        UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
        [self addGestureRecognizer:singleTap];
        
        
        _timer= [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(jumpNewViewController) userInfo:nil repeats:YES];
    }
    return self;
}

#pragma mark --- 响应倒计时的方法
- (void)handleSingleTap:(UITapGestureRecognizer *)sender
{    
    if (self.blockNewViewController) {
        [_timer invalidate];
        _timer = nil;
        self.blockNewViewController();
    }
}

- (void)jumpNewViewController {
    static int z = 0;
    z ++;
    
    self.text = [NSString stringWithFormat:@"%d秒后跳转",5-z];
    
    if (z == 5) {
        if (self.blockNewViewController) {
            [_timer invalidate];
            _timer = nil;
            self.blockNewViewController();
        }
    }
}

@end
