//
//  FOXRegistration.m
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXRegistrationEvent.h"

@implementation FOXRegistrationEvent

-(instancetype)initWithLtvId:(NSUInteger)ltvId {
    return [super initWithEventName:@"FOX_registration" andLtvId:ltvId];
}

-(instancetype)initWithEventName:(NSString *)eventName andLtvId:(NSUInteger)ltvId {
    return [super initWithEventName:eventName andLtvId:ltvId];
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
