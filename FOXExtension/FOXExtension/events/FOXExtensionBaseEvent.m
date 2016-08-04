//
//  FOXExtensionBaseEvent.m
//  FOXExtension
//
//  Created by Wuwei on 2016/08/02.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXExtensionBaseEvent.h"

#define kDateFormat @"yyyy-MM-dd"

@interface FOXExtensionBaseEvent ()
<
FOXExFacebookEventDelegate,
FOXExTwitterEventDelegate,
FOXExVizuryEventDelegate,
FOXExDynamicRemarketingEventDelegate,
FOXExDynalystGamesEventDelegate,
FOXExDynalystCommerceEventDelegate,
FOXExChartBoostEventDelegate
>

@end

@implementation FOXExtensionBaseEvent

-(instancetype) initWithEventName:(NSString *) eventName andLtvId:(NSUInteger) ltvId
{
    self = [super initWithEventName:eventName andLtvId:ltvId];
    if (self) {
        self.eventInfo = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark - Common
-(void) setUserId:(NSString *) userId {
    if (userId && userId.length > 0) {
        self.buid = userId;
        [self putJsonValue:userId forKey:@"user_id"];
    }
}

-(void) addProductById:(NSString *) productId itemLocationId:(NSString *) itemLocationId price:(double) price quantity:(NSUInteger) quantity {
    if (productId) {
        NSMutableArray* productList = [self.eventInfo objectForKey:@"product"];

        if (!productList) {
            productList = [NSMutableArray array];
        }

        NSMutableDictionary* product = [NSMutableDictionary dictionary];
        [product setValue:productId forKey:@"id"];

        if (itemLocationId) {
            [product setValue:itemLocationId forKey:@"item_location_id"];
        }
        if (price > 0) {
            [product setValue:@(price) forKey:@"price"];
        }
        if (quantity > 0) {
            [product setValue:@(quantity) forKey:@"quantity"];
        }

        [productList addObject:product];
    }
}

#pragma mark - Facebook, Twitter
-(void) setItemId:(NSString *) itemId {
    if (itemId) {
        self.sku = itemId;
        [self addExtraValue:itemId forKey:@"itemId"];
    }
}

#pragma mark - Vizury
-(void) setCategoryId:(NSString *) categoryId {
    [self putJsonValue:categoryId forKey:@"category_id"];
}


#pragma mark - DynamicRemarketing
+(void) setGoogleCrmId:(NSString *) crmId {
    if (crmId) {
        NSMutableDictionary* userInfo = [NSMutableDictionary dictionaryWithDictionary:[FOXTrack getUserInfo]];
        [userInfo setObject:crmId forKey:@"_google_crm_id"];
        [FOXTrack setUserInfo:userInfo];
    }
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

#pragma mark - DynalystGames
+(void) setDynalystGuid:(NSString *) guid {
    if (guid) {
        NSMutableDictionary* userInfo = [NSMutableDictionary dictionaryWithDictionary:[FOXTrack getUserInfo]];
        [userInfo setObject:guid forKey:@"guid"];
        [FOXTrack setUserInfo:userInfo];
    }
}

+(void) setDynalystAdnt:(NSString *) adnt {
    if (adnt) {
        NSMutableDictionary* userInfo = [NSMutableDictionary dictionaryWithDictionary:[FOXTrack getUserInfo]];
        [userInfo setObject:adnt forKey:@"adnt"];
        [FOXTrack setUserInfo:userInfo];
    }
}

+(void) setDynalystExt:(NSDictionary *) extJson {
    if (extJson) {
        NSMutableDictionary* userInfo = [NSMutableDictionary dictionaryWithDictionary:[FOXTrack getUserInfo]];
        [userInfo setObject:extJson forKey:@"ext"];
        [FOXTrack setUserInfo:userInfo];
    }
}

-(void) setDynalystAdVertiserId:(NSString *) advertiserId {
    [self putJsonValue:advertiserId forKey:@"dynalyst_advertiser_id"];
}

#pragma mark - DynalystCommerce
-(void) setTransactionId:(NSString *) transactionId {
    [self putJsonValue:transactionId forKey:@"transcation_id"];
}


#pragma mark - ChartBoost
-(void) setLocalizedTitle:(NSString *) localizedTitle {
    [self putJsonValue:localizedTitle forKey:@"localized_title"];
}

-(void) setLocalizedDescription:(NSString *) localizedDescription {
    [self putJsonValue:localizedDescription forKey:@"localized_description"];
}

-(void) setReciptValid:(BOOL) isValid {
    [self putJsonValue:@(isValid) forKey:@"receipt_valid"];
}

-(void) setRecipt:(NSString *) receipt {
    [self putJsonValue:receipt forKey:@"receipt"];
}

#pragma mark - override
-(void) setEventInfo:(NSDictionary *) eventInfo {
    if (eventInfo) {
        NSMutableDictionary* json = (NSMutableDictionary*)self.eventInfo;
        [json setDictionary:eventInfo];
    }
}

#pragma mark - private
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
