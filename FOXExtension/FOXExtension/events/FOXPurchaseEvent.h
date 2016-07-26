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

-(instancetype _Nullable)initWithLtvId:(NSUInteger)ltvId
                                 price:(double)price;

-(instancetype _Nullable)initWithLtvId:(NSUInteger)ltvId
                           transaction:(SKPaymentTransaction* _Nonnull) transaction
                               product:(SKProduct* _Nonnull) product;

-(instancetype _Nullable)initWithLtvId:(NSUInteger)ltvId
                              itemName:(NSString* _Nullable) itemName
                                 price:(double) price
                              quantity:(NSInteger) quantity
                              currency:(NSString* _Nullable) currency;



@end
