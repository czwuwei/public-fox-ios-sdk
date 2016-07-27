//
//  FOXRegistration.h
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import <FOXSDK/FOXSDK.h>

@interface FOXRegistrationEvent : FOXEvent

/**
 * Create event for registration succeeded with default eventName and specified ltvId.
 * @param ltvId         LTV identifier given by FOX
 */
-(instancetype _Nullable )initWithLtvId:(NSUInteger)ltvId;

/**
 * Create event for registration succeeded with indicated eventName and specified ltvId.
 * @param eventName     Indicated eventName
 * @param ltvId         LTV identifier given by FOX
 */
-(instancetype _Nullable )initWithEventName:(NSString* _Nonnull) eventName andLtvId:(NSUInteger)ltvId;


/**
 * Add user identifier for event.
 * @param userId        Specified user identifier
 */
-(void)setUserId:(NSString* _Nonnull) userId;

@end
