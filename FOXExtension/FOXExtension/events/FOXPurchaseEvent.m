//
//  FOXPurchaseEvent.m
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXPurchaseEvent.h"

@implementation FOXPurchaseEvent


-(instancetype)initWithEventName:(NSString *)eventName
                        andLtvId:(NSUInteger)ltvId
                     transaction:(SKPaymentTransaction *)transaction
                         product:(SKProduct *)product {
    NSNumberFormatter *formatter = [NSNumberFormatter new];
    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [formatter setLocale:product.priceLocale];
    NSString *currency = [formatter currencyCode];

    self = [self initWithEventName:eventName
                          andLtvId:ltvId
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

-(instancetype)initWithLtvId:(NSUInteger)ltvId
                 transaction:(SKPaymentTransaction * _Nonnull)transaction
                     product:(SKProduct * _Nonnull)product {
    return [self initWithEventName:@"" andLtvId:ltvId transaction:transaction product:product];
}

-(instancetype)initWithEventName:(NSString *)eventName
                        andLtvId:(NSUInteger)ltvId
                        itemName:(NSString * _Nullable)itemName
                             sku:(NSString * _Nonnull)sku
                           price:(double)price
                        quantity:(NSInteger)quantity
                        currency:(NSString * _Nullable)currency {
    self = [super initWithEventName:@"FOX_purcase" andLtvId:ltvId];
    if (self) {
        self.itemName = itemName;
        self.price = price;
        self.quantity = quantity;
        self.currency = currency;
    }
    return self;
}


-(instancetype)initWithLtvId:(NSUInteger)ltvId
                    itemName:(NSString *)itemName
                         sku:(NSString *)sku
                       price:(double)price
                    quantity:(NSInteger)quantity
                    currency:(NSString *)currency {
    return [self initWithEventName:@"" andLtvId:ltvId itemName:itemName sku:sku price:price quantity:quantity currency:currency];
}

-(void)setUserId:(NSString *)userId {
    if (userId && userId.length > 0) {
        self.buid = userId;
        if (self.eventInfo) {
            NSMutableDictionary* dict = [NSMutableDictionary dictionaryWithDictionary:self.eventInfo];
            [dict setObject:userId forKey:@"fox_user_id"];
            self.eventInfo = dict;
        } else {
            self.eventInfo = @{ @"fox_user_id" : userId };
        }
    }
}
@end
