//
//  FOXPurchaseEvent.m
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXPurchaseEvent.h"

@implementation FOXPurchaseEvent

-(instancetype) initWithTransaction:(SKPaymentTransaction *) transaction
                            product:(SKProduct *) product {
    return [self initWithLtvId:0 transaction:transaction product:product];
}

-(instancetype) initWithItemName:(NSString *) itemName
                             sku:(NSString *) sku
                           price:(double) price
                        quantity:(NSUInteger) quantity
                        currency:(NSString *) currency {
    return [self initWithLtvId:0 itemName:itemName sku:sku price:price quantity:quantity currency:currency];
}

-(instancetype) initWithLtvId:(NSUInteger) ltvId
                  transaction:(SKPaymentTransaction *) transaction
                      product:(SKProduct *) product {
    NSNumberFormatter *formatter = [NSNumberFormatter new];
    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [formatter setLocale:product.priceLocale];
    NSString *currency = [formatter currencyCode];

    self = [self initWithLtvId:ltvId
                      itemName:product.localizedTitle
                           sku:product.productIdentifier
                         price:[product.price doubleValue]
                      quantity:1
                      currency:currency];
    if (self) {
        self.orderId = transaction.transactionIdentifier;
    }
    return self;
}

-(instancetype) initWithLtvId:(NSUInteger) ltvId
                     itemName:(NSString * _Nullable) itemName
                          sku:(NSString * _Nonnull) sku
                        price:(double) price
                     quantity:(NSUInteger) quantity
                     currency:(NSString * _Nullable) currency {
    self = [super initWithEventName:@"_purcase" andLtvId:ltvId];
    if (self) {
        self.itemName = itemName;
        self.price = price;
        self.quantity = quantity;
        self.currency = currency;
    }
    return self;
}

@end
