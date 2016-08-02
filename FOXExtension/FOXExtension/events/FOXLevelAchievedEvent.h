//
//  FOXLevelAchievedEvent.h.h
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXExtensionBaseEvent.h"

@interface FOXLevelInfo : NSObject

@property (nonatomic, copy) NSString* _Nullable eventLabel;
@property (nonatomic) long eventField;
@property (nonatomic) long mainLevel;
@property (nonatomic) long subLevel;
@property (nonatomic, copy) NSString* _Nullable description;
@property (nonatomic, copy) NSString* _Nullable dateType;

@end

@interface FOXLevelAchievedEvent : FOXExtensionBaseEvent

@property (nonatomic, copy) NSArray<FOXLevelInfo*>* _Nullable trackInfoList;

/**
 * Create event with default eventName and no ltvId.
 */
-(instancetype _Nullable) init;

/**
 * Create event with default eventName and specified ltvId.
 * @param ltvId         LTV identifier given by FOX
 */
-(instancetype _Nullable) initWithLtvId:(NSUInteger) ltvId;

@end
