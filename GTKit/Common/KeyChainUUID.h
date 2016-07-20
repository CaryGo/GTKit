//
//  KeyChainUUID.h
//  KeyChainUDID
//
//  Created by Emck on 8/17/13.
//  Copyright (c) 2013 Apptem. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KeyChainUUID : NSObject

// UUID Value
+ (NSString*)Value;

// Delete UUID
+ (void)Renew;

// Make UUID
+ (NSString *)makeUUID;

@end