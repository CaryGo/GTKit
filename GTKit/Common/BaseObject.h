//
//  BaseObject.h
//  FiveStar
//
//  Created by xie aki on 12-8-3.
//
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface BaseObject : NSObject

- (id)initWithJsonDictionary:(NSDictionary *)dic;
- (void)getWithJsonDictionary:(NSDictionary *)dic;

- (void)getWithResponseObject:(id)responseObject;
- (id)initWithResponseObject:(id)responseObject;

- (BOOL)boolValue:(id)boolObj;
- (NSString*)stringValue:(id)stringObj;
- (NSInteger)intValue:(id)intObj;
- (NSInteger)integerValue:(id)intObj;
- (CGFloat)floatValue:(id)floatObj;
- (CGFloat)doubleValue:(id)doubleObj;

@end
