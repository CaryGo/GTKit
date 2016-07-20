//
//  BaseObject.m
//  FiveStar
//
//  Created by xie aki on 12-8-3.
//
//

#import "BaseObject.h"

@implementation BaseObject

- (void)getWithJsonDictionary:(NSDictionary *)dic{
    //sub-class to implement this method
}

- (id)initWithJsonDictionary:(NSDictionary *)dic{
    if(self = [super init]){
        [self getWithJsonDictionary:dic];
    }
    return self;
}

- (id)initWithResponseObject:(id)responseObject{
    if(self = [super init]){
        [self getWithResponseObject:responseObject];
    }
    return self;
}
- (void)getWithResponseObject:(id)responseObject{
    
}

- (BOOL)boolValue:(id)boolObj{
    if(boolObj == [NSNull null] || ![boolObj isKindOfClass:[NSNumber class]]){
        return NO;
    }
    return [boolObj boolValue];
}

- (NSString*)stringValue:(id)stringObj{
    if(stringObj == [NSNull null] || ![stringObj isKindOfClass:[NSString class]]){
        return @"";
    }
    return ((NSString*)stringObj);
}

- (NSInteger)intValue:(id)intObj{
    if(intObj == [NSNull null]){
        return 0;
    }
    return [intObj intValue];
}

- (NSInteger)integerValue:(id)intObj{
    if(intObj == [NSNull null]){
        return (NSInteger)0;
    }
    return [intObj integerValue];
}

- (CGFloat)floatValue:(id)floatObj{
    if(floatObj == [NSNull null]){
        return (float)0;
    }
    return [floatObj floatValue];
}

- (CGFloat)doubleValue:(id)doubleObj{
    if(doubleObj == [NSNull null]){
        return (double)0;
    }
    return [doubleObj doubleValue];
}

@end
