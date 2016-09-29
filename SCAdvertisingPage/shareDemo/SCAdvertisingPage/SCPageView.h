//
//  SCPageView.h
//  shareDemo
//
//  Created by 翟少聪 on 16/9/28.
//  Copyright © 2016年 Nice. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^blockSelectAdvertising)();

@interface SCPageView : UIView

@property (nonatomic, copy) NSString *pageURLString;
@property (nonatomic, copy) blockSelectAdvertising blockSelect;


@end
