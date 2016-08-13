//
//  FOXExtensionBaseEvent.h
//  FOXExtension
//
//  Created by Wuwei on 2016/08/02.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXEvent.h"
#import "FOXTrack.h"
#import "FOXExtensionProtocols.h"

/**
 * base event class, implements protocols of all medias
 */
@interface FOXExtensionBaseEvent : FOXEvent

/**
 * Add user identifier for event.
 * @param userId        Specified user identifier
 */
-(void) setUserId:(nonnull NSString*) userId;


/**
 * put JSON Key-Value to event
 */
-(void) putJsonValue:(nonnull id) value forKey:(nonnull NSString*) key;

@end
