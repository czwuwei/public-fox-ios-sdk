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

@property (nonatomic, copy) NSString* _Nullable categoryId;

@property (nonatomic, copy) NSString* _Nullable localizedTitle;
@property (nonatomic, copy) NSString* _Nullable localizedDescription;
@property (nonatomic, copy) NSString* _Nullable receiptValid;
@property (nonatomic, copy) NSString* _Nullable receipt;

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
 * @param amount        Amount
 * @param currency      Currency
 */
-(instancetype _Nullable) initWithItemName:(NSString* _Nullable) itemName
                                       sku:(NSString* _Nonnull) sku
                                    amount:(double) amount
                                  currency:(NSString* _Nullable) currency;

/**
 * Create event with default eventName, specified ltvId and purchase detail.
 * @param ltvId         LTV identifier given by FOX
 * @param itemName      Name of item
 * @param sku           SKU
 * @param amount        Amount
 * @param currency      Currency
 */
-(instancetype _Nullable) initWithLtvId:(NSUInteger) ltvId
                               itemName:(NSString* _Nullable) itemName
                                    sku:(NSString* _Nonnull) sku
                                 amount:(double) amount
                               currency:(NSString* _Nullable) currency;

@end
