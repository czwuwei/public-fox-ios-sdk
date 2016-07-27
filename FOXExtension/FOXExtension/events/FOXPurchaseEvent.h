//
//  FOXPurchaseEvent.h
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import <FOXSDK/FOXSDK.h>
#import <StoreKit/StoreKit.h>

@interface FOXPurchaseEvent : FOXEvent

/**
 * Create event for purchase with default eventName, specified ltvId and purchase detail.
 * @param ltvId         LTV identifier given by FOX
 * @param transaction   StoreKit payment transaction
 * @param product       StoreKit product detail
 */
-(instancetype _Nullable)initWithLtvId:(NSUInteger)ltvId
                           transaction:(SKPaymentTransaction* _Nonnull) transaction
                               product:(SKProduct* _Nonnull) product;

/**
 * Create event for purchase with indicated eventName, specified ltvId and purchase detail.
 * @param eventName     Specified eventName
 * @param ltvId         LTV identifier given by FOX
 * @param transaction   StoreKit payment transaction
 * @param product       StoreKit product detail
 */
-(instancetype _Nullable)initWithEventName:(NSString * _Nonnull)eventName
                                  andLtvId:(NSUInteger)ltvId
                               transaction:(SKPaymentTransaction* _Nonnull) transaction
                                   product:(SKProduct* _Nonnull) product;


/**
 * Create event for purchase with default eventName, specified ltvId and purchase detail.
 * @param ltvId         LTV identifier given by FOX
 * @param itemName      Name of item
 * @param sku           SKU
 * @param price         Price
 * @param quantity      Quantity
 * @param currency      Currency
 */
-(instancetype _Nullable)initWithLtvId:(NSUInteger)ltvId
                              itemName:(NSString* _Nullable) itemName
                                   sku:(NSString* _Nonnull) sku
                                 price:(double) price
                              quantity:(NSInteger) quantity
                              currency:(NSString* _Nullable) currency;

/**
 * Create event for purchase with indicated eventName, specified ltvId and purchase detail.
 * @param eventName     Specified eventName
 * @param ltvId         LTV identifier given by FOX
 * @param itemName      Name of item
 * @param sku           SKU
 * @param price         Price
 * @param quantity      Quantity
 * @param currency      Currency
 */
-(instancetype _Nullable)initWithEventName:(NSString * _Nonnull)eventName
                                  andLtvId:(NSUInteger)ltvId
                                  itemName:(NSString* _Nullable) itemName
                                       sku:(NSString* _Nonnull) sku
                                     price:(double) price
                                  quantity:(NSInteger) quantity
                                  currency:(NSString* _Nullable) currency;

/**
 * Add user identifier for event.
 * @param userId        Specified user identifier
 */
-(void)setUserId:(NSString* _Nonnull) userId;


@end
