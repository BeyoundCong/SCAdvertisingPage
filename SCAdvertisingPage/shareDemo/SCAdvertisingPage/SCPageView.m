//
//  SCPageView.m
//  shareDemo
//
//  Created by 翟少聪 on 16/9/28.
//  Copyright © 2016年 Nice. All rights reserved.
//

#import "SCPageView.h"
#import "UIImageView+WebCache.h"

@interface SCPageView ()

@property (nonatomic ,strong) UIImageView *advertisingPageImageView;

@end

@implementation SCPageView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
        
        _advertisingPageImageView = [[UIImageView alloc] initWithFrame:self.bounds];
        _advertisingPageImageView.userInteractionEnabled = YES;
        [self addSubview:_advertisingPageImageView];
        
        UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
        [_advertisingPageImageView addGestureRecognizer:singleTap];
    }
    return self;
}


- (void)setPageURLString:(NSString *)pageURLString {
    _pageURLString = pageURLString;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [_advertisingPageImageView sd_setImageWithURL:[NSURL URLWithString:_pageURLString] placeholderImage:[UIImage imageNamed:@"1111.jpg"]];
}

#pragma mark --- 响应点击广告页的方法
- (void)handleSingleTap:(UITapGestureRecognizer *)sender
{
    if (self.blockSelect) {
        self.blockSelect();
    }
}


@end
