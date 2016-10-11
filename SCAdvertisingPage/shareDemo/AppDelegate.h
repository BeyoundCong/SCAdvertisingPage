//
//  AppDelegate.h
//  shareDemo
//
//  Created by 翟少聪 on 16/9/27.
//  Copyright © 2016年 Nice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

