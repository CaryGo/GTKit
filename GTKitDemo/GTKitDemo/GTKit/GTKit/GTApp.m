//
//  GTApp.m
//  GTKit
//
//  Created by akixie on 15/12/2.
//  Copyright © 2015年 Get. All rights reserved.
//

#import "GTApp.h"

static NSString *GTHasBeenOpened = @"GTHasBeenOpened";

@implementation GTApp

/**
 *  记录第一次App启动
 *
 *  @param block
 */
+ (void)onFirstStart:(void (^ _Nullable)(BOOL isFirstStart))block {
    [self onFirstStart:block forKey:GTHasBeenOpened];
}

/**
 *  记录第一次App启动
 *
 *  @param block
 *  @param key   
 */
+ (void)onFirstStart:(void (^ _Nullable)(BOOL isFirstStart))block forKey:(nonnull NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpened = [defaults boolForKey:key];
    if (hasBeenOpened != true) {
        [defaults setBool:YES forKey:key];
        [defaults synchronize];
    }
    block(!hasBeenOpened);
}

/**
 *  返回是否第一次运行
 *
 *  @return BOOL
 */
+ (BOOL)isFirstStart {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpened = [defaults boolForKey:GTHasBeenOpened];
    if (hasBeenOpened != true) {
        return YES;
    } else {
        return NO;
    }
}

@end
