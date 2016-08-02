//
//  FOXExtensionBaseEvent.m
//  FOXExtension
//
//  Created by 呉 維 on 2016/08/02.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXExtensionBaseEvent.h"

#define kDateFormat @"yyyy-MM-dd"

@implementation FOXExtensionBaseEvent

-(instancetype) initWithEventName:(NSString *) eventName andLtvId:(NSUInteger) ltvId
{
    self = [super initWithEventName:eventName andLtvId:ltvId];
    if (self) {
        self.eventInfo = [NSMutableDictionary dictionary];
    }
    return self;
}

-(void) setDestination:(NSString *) destination {
    [self putJsonValue:destination forKey:@"destination"];
}

-(void) setOrigin:(NSString *) origin {
    [self putJsonValue:origin forKey:@"origin"];
}

-(void) setDateIn:(NSDate *) dateIn {
    NSString* din = [self transDate:dateIn toFormat:kDateFormat];
    [self putJsonValue:din forKey:@"din"];
}

-(void) setDateOut:(NSDate *) dateOut {
    NSString* dout = [self transDate:dateOut toFormat:kDateFormat];
    [self putJsonValue:dout forKey:@"dout"];
}


-(void) setProductIdList:(NSArray<FOXProductInfo *> *) productIdList {
    NSMutableArray* productJsonArray = [NSMutableArray array];
    for (FOXProductInfo* product in productIdList) {
        NSMutableDictionary* productJson = [NSMutableDictionary dictionary];

        if (product.id) {
            [productJson setValue:product.id forKey:@"id"];
        }
        if (product.itemLocationId) {
            [productJson setValue:product.itemLocationId forKey:@"item_location_id"];
        }

        if (product.price > 0) {
            [productJson setValue:@(product.price) forKey:@"price"];
        }

        if (product.quantity > 0) {
            [productJson setValue:@(product.quantity) forKey:@"quantity"];
        }

        [productJsonArray addObject:productJson];
    }

    [self putJsonValue:productJsonArray forKey:@"product"];
}

-(void) setUserId:(NSString *) userId {
    if (userId && userId.length > 0) {
        self.buid = userId;
        [self putJsonValue:userId forKey:@"fox_user_id"];
    }
}

-(void) setEventInfo:(NSDictionary *) eventInfo {
    if (eventInfo) {
        NSMutableDictionary* json = (NSMutableDictionary*)self.eventInfo;
        [json setDictionary:eventInfo];
    }
}

-(void) putJsonValue:(id) value forKey:(NSString*) key {
    if (key && value) {
        NSMutableDictionary* json = (NSMutableDictionary*)self.eventInfo;
        [json setObject:value forKey:key];
    }
}

-(NSString*) transDate:(NSDate*) date toFormat:(NSString*) format {
    if (date && format) {
        NSDateFormatter *formatter = [NSDateFormatter new];
        [formatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]];
        [formatter setDateFormat:format];
        return [formatter stringFromDate:date];
    } else {
        return nil;
    }
}

@end
