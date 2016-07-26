//
//  FOXPurchaseEvent.m
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXPurchaseEvent.h"

@implementation FOXPurchaseEvent

-(instancetype) initWithLtvId:(NSUInteger)ltvId price:(double)price {
    return [self initWithLtvId:ltvId
                      itemName:nil
                         price:price
                      quantity:1
                      currency:@"JPY"];
}


-(instancetype)initWithLtvId:(NSUInteger)ltvId
                 transaction:(SKPaymentTransaction * _Nonnull)transaction
                     product:(SKProduct * _Nonnull)product {
    NSNumberFormatter *formatter = [NSNumberFormatter new];
    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [formatter setLocale:product.priceLocale];
    NSString *currency = [formatter currencyCode];

    self = [self initWithLtvId:ltvId
                      itemName:product.localizedTitle
                         price:[product.price doubleValue]
                      quantity:1
                      currency:currency];
    if (self) {
        self.sku = product.productIdentifier;
        self.orderId = transaction.transactionIdentifier;
    }
    return self;
}

-(instancetype)initWithLtvId:(NSUInteger)ltvId
                    itemName:(NSString *)itemName
                       price:(double)price
                    quantity:(NSInteger)quantity
                    currency:(NSString *)currency {
    self = [super initWithEventName:@"FOX_purcase" andLtvId:ltvId];
    if (self) {
        self.itemName = itemName;
        self.price = price;
        self.quantity = quantity;
        self.currency = currency;
    }
    return self;
}


@end
