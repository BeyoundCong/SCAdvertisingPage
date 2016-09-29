//
//  SCJumpViewController.h
//  shareDemo
//
//  Created by 翟少聪 on 16/9/29.
//  Copyright © 2016年 Nice. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^blockJumpMainViewController)();

@interface SCJumpViewController : UIViewController

@property (nonatomic, copy) blockJumpMainViewController blockMainViewController;

@end
