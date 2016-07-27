//
//  FOXTutorialEvent.h
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import <FOXSDK/FOXSDK.h>

@interface FOXTutorialEvent : FOXEvent

/**
 * Create event for tutorial passed with default eventName and specified ltvId.
 * @param ltvId         LTV identifier given by FOX
 */
-(instancetype _Nullable)initWithLtvId:(NSUInteger)ltvId;

/**
 * Create event for tutorial passed with indicated eventName and specified ltvId.
 * @param eventName     Specified eventName
 * @param ltvId         LTV identifier given by FOX
 */
-(instancetype _Nullable)initWithEventName:(NSString * _Nonnull)eventName andLtvId:(NSUInteger)ltvId;

@end
