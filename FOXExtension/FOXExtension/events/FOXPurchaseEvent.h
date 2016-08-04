//
//  FOXPurchaseEvent.h
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXExtensionBaseEvent.h"
#import <StoreKit/StoreKit.h>

#define kReceiptValidTrue @"true"
#define kReceiptValidFalse @"false"

@interface FOXPurchaseEvent : FOXExtensionBaseEvent
<
FOXExFacebookEventDelegate,
FOXExTwitterEventDelegate,
FOXExVizuryEventDelegate,
FOXExDynamicRemarketingEventDelegate,
FOXExDynalystCommerceEventDelegate,
FOXExDynalystGamesEventDelegate,
FOXExChartBoostEventDelegate
>

/**
 * Create event with default eventName, no ltvId and purchase detail.

 * @param transaction   StoreKit payment transaction
 * @param product       StoreKit product detail
 */
-(instancetype _Nullable) initWithTransaction:(SKPaymentTransaction* _Nonnull) transaction
                                      product:(SKProduct* _Nonnull) product;

/**
 * Create event with default eventName, specified ltvId and purchase detail.
 * @param ltvId         LTV identifier given by FOX
 * @param transaction   StoreKit payment transaction
 * @param product       StoreKit product detail
 */
-(instancetype _Nullable) initWithLtvId:(NSUInteger) ltvId
                            transaction:(SKPaymentTransaction* _Nonnull) transaction
                                product:(SKProduct* _Nonnull) product;

/**
 * Create event with default eventName, no ltvId and purchase detail.
 * @param itemName      Name of item
 * @param sku           SKU
 * @param price         Price
 * @param currency      Currency
 */
-(instancetype _Nullable) initWithItemName:(NSString* _Nullable) itemName
                                       sku:(NSString* _Nonnull) sku
                                     price:(double) price
                                  quantity:(NSUInteger) quantity
                                  currency:(NSString* _Nullable) currency;

/**
 * Create event with default eventName, specified ltvId and purchase detail.
 * @param ltvId         LTV identifier given by FOX
 * @param itemName      Name of item
 * @param sku           SKU
 * @param price         Price
 * @param currency      Currency
 */
-(instancetype _Nullable) initWithLtvId:(NSUInteger) ltvId
                               itemName:(NSString* _Nullable) itemName
                                    sku:(NSString* _Nonnull) sku
                                  price:(double) price
                               quantity:(NSUInteger) quantity
                               currency:(NSString* _Nullable) currency;

@end
