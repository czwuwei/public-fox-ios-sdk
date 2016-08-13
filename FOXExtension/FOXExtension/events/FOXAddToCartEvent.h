//
//  FOXAddToCartEvent.h
//  FOXExtension
//
//  Created by Wuwei on 2016/08/02.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXExtensionBaseEvent.h"

@interface FOXAddToCartEvent : FOXExtensionBaseEvent
<
FOXExFacebookEventDelegate,
FOXExTwitterEventDelegate,
FOXExCriteoEventDelegate,
FOXExVizuryEventDelegate,
FOXExDynamicRemarketingEventDelegate,
FOXExDynalystCommerceEventDelegate
>

/** @name Properties */

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
