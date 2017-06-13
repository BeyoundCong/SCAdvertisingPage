//
//  SCCountdownLabel.h
//  shareDemo
//
//  Created by 翟少聪 on 16/9/29.
//  Copyright © 2016年 Nice. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^blockSelectJumpNewViewController)();

@interface SCCountdownLabel : UILabel

@property (nonatomic, copy) blockSelectJumpNewViewController blockNewViewController;
@property (nonatomic, assign) BOOL isStop; //是否停止计时器

@end
