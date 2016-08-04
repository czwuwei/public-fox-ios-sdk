//
//  FOXExtensionBaseEvent.h
//  FOXExtension
//
//  Created by 呉 維 on 2016/08/02.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import <FOXSDK/FOXSDK.h>
#import "FOXProductInfo.h"

@interface FOXExtensionBaseEvent : FOXEvent

@property (nonatomic, copy) NSString* _Nullable categoryId;

@property (nonatomic, copy) NSString* _Nullable destination;
@property (nonatomic, copy) NSString* _Nullable origin;
@property (nonatomic, copy) NSDate* _Nullable dateIn;
@property (nonatomic, copy) NSDate* _Nullable dateOut;

@property (nonatomic, copy) NSArray<FOXProductInfo*>* _Nullable productIdList;

/**
 * Add user identifier for event.
 * @param userId        Specified user identifier
 */
-(void) setUserId:(NSString* _Nonnull) userId;

-(void) putJsonValue:(id _Nonnull) value forKey:(NSString* _Nonnull) key;

@end
