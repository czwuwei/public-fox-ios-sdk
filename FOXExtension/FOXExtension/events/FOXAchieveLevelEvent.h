//
//  FOXAchieveLevelEvent.h.h
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import <FOXSDK/FOXSDK.h>

@interface FOXAchieveLevelEvent : FOXEvent

/**
 * Create event for certain level achieved with default eventName and specified ltvId.
 * @param ltvId         LTV identifier given by FOX
 */
-(instancetype _Nullable)initWithLtvId:(NSUInteger)ltvId;

/**
 * Create event for certain level achieved with indicated eventName and specified ltvId.
 * @param eventName     Indicated eventName
 * @param ltvId         LTV identifier given by FOX
 */
-(instancetype _Nullable)initWithEventName:(NSString* _Nonnull) eventName andLtvId:(NSUInteger)ltvId;

/**
 * Add specified level for event.
 * @param level         Level number
 */
-(void)setLevel:(NSUInteger) level;

/**
 * Add user identifier for event.
 * @param userId        Specified user identifier
 */
-(void)setUserId:(NSString* _Nonnull) userId;

@end
