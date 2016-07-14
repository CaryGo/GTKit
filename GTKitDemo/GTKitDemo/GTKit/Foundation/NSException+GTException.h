//
//  NSException+GTException.h
//  GTKit
//
//  Created by akixie on 15/12/25.
//  Copyright © 2015年 Get. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSException (GTException)

/**
*  空异常（值为nil,null时抛此异常）
*
*  @param argumentName 为空的变量名
*  @param userInfo     用户信息
*
*  @return NSInvalidArgumentException
*/
+ (NSException *)emptyException:(NSString*)argumentName userInfo:(NSDictionary*)userInfo;
/**
 *  数据类型不对 ,if(![keyValues isKindOfClass:[NSDictionary class]])
 *
 *  @param className 对象名称
 *  @param userInfo  用户信息
 *
 *  @return NSInvalidArgumentException
 */
+ (NSException *)classException:(NSString*)className userInfo:(NSDictionary*)userInfo;
/**
 *  selector无响应异常, if([delegate respondsToSelector:selector] == NO)
 *
 *  @param selectorName 方法名
 *  @param userInfo     用户信息
 *
 *  @return NSInvalidArgumentException
 */
+ (NSException *)selectorException:(NSString*)selectorName userInfo:(NSDictionary*)userInfo;
/**
 *  数组越界异常 ，if(objectIndex >= count)
 *
 *  @param arrayName 数组名
 *  @param userInfo  用户信息
 *
 *  @return NSRangeException
 */
+ (NSException *)rangeException:(NSString*)arrayName userInfo:(NSDictionary*)userInfo;

/**
 *  对像未实例化或内存分配不足异常
 *
 *  @param objectName 对象名称
 *  @param userInfo   用户信息
 *
 *  @return NSMallocException
 */
+ (NSException *)mallocException:(NSString*)objectName userInfo:(NSDictionary*)userInfo;
/**
 *  服务器错误
 *
 *  @param serverErrorInfo 服务器错误信息
 *  @param userInfo        用户信息
 *
 *  @return NSGenericException
 */
+ (NSException *)serverException:(NSString*)serverErrorInfo userInfo:(NSDictionary*)userInfo;

@end
