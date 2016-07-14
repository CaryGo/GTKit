//
//  NSException+GTException.m
//  GTKit
//
//  Created by akixie on 15/12/25.
//  Copyright © 2015年 Get. All rights reserved.
//

#import "NSException+GTException.h"

@implementation NSException (GTException)

+ (NSException *)emptyException:(NSString*)argumentName userInfo:(NSDictionary*)userInfo{
    return [NSException exceptionWithName:NSInvalidArgumentException reason:[NSString stringWithFormat:@"ArgumentException: The %@ argument is null or nil.",argumentName] userInfo:userInfo];
}

+ (NSException *)classException:(NSString*)className userInfo:(NSDictionary*)userInfo{
    return [NSException exceptionWithName:NSInvalidArgumentException reason:[NSString stringWithFormat:@"ArgumentException: The %@ class error.",className] userInfo:userInfo];
}

+ (NSException *)selectorException:(NSString*)selectorName userInfo:(NSDictionary*)userInfo{
    return [NSException exceptionWithName:NSInvalidArgumentException reason:[NSString stringWithFormat:@"ArgumentException: The delegate %@ does not respond to the selector argument.",selectorName] userInfo:userInfo];
}

+ (NSException *)rangeException:(NSString*)arrayName userInfo:(NSDictionary*)userInfo{
    return [NSException exceptionWithName:NSRangeException reason:[NSString stringWithFormat:@"RangeException: The array %@ index beyond bounds.",arrayName] userInfo:userInfo];
}

+ (NSException *)mallocException:(NSString*)objectName userInfo:(NSDictionary*)userInfo{
    return [NSException exceptionWithName:NSMallocException reason:[NSString stringWithFormat:@"Malloc Exception: the object %@ Unable to resize objects.",objectName] userInfo:userInfo];
}

+ (NSException *)serverException:(NSString*)serverErrorInfo userInfo:(NSDictionary*)userInfo{
    return [NSException exceptionWithName:NSGenericException reason:[NSString stringWithFormat:@"Server Exception: %@",serverErrorInfo] userInfo:userInfo];
}


@end
