//
//  GTApp.h
//  GTKit
//
//  Created by akixie on 15/12/2.
//  Copyright © 2015年 Get. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  Get App name
 */
#define APP_NAME [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"]

/**
 *  Get App build
 */
#define APP_BUILD [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]

/**
 *  Get App version
 */
#define APP_VERSION222 [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]



@interface GTApp : NSObject

/**
 *  记录第一次App启动
 *
 *  @param block
 */
+ (void)onFirstStart:(void (^ _Nullable)(BOOL isFirstStart))block;

+ (void)onFirstStart:(void (^ _Nullable)(BOOL isFirstStart))block forKey:(nonnull NSString *)key;

/**
 *  返回是否第一次运行
 *
 *  @return BOOL
 */
+ (BOOL)isFirstStart;


@end

