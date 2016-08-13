//
//  FOXLevelAchievedEvent.h.h
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXExtensionBaseEvent.h"

/**
 * event for level achieved
 */
@interface FOXLevelAchievedEvent : FOXExtensionBaseEvent
<
FOXExFacebookEventDelegate,
FOXExTwitterEventDelegate,
FOXExChartBoostEventDelegate
>

/** @name Instance Method */

/**
 * Create event with default eventName and no ltvId.
 */
-(nullable instancetype) init;

/**
 * Create event with default eventName and specified ltvId.
 * @param ltvId         LTV identifier given by FOX
 */
-(nullable instancetype) initWithLtvId:(NSUInteger) ltvId;

@end
