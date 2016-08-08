//
//  FOXExtensionBaseEvent.h
//  FOXExtension
//
//  Created by Wuwei on 2016/08/02.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import <FOXSDK/FOXSDK.h>
#import "FOXExtensionProtocols.h"

@interface FOXExtensionBaseEvent : FOXEvent

/**
 * Add user identifier for event.
 * @param userId        Specified user identifier
 */
-(void) setUserId:(NSString* _Nonnull) userId;

-(void) putJsonValue:(id _Nonnull) value forKey:(NSString* _Nonnull) key;

@end
