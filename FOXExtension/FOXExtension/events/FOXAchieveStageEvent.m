//
//  FOXAchieveStageEvent.m
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXAchieveStageEvent.h"

@implementation FOXAchieveStageEvent

-(instancetype)initWithEventName:(NSString *)eventName andLtvId:(NSUInteger)ltvId {
    return [super initWithEventName:eventName andLtvId:ltvId];
}

-(instancetype)initWithLtvId:(NSUInteger)ltvId {
    return [super initWithEventName:@"FOX_stage" andLtvId:ltvId];
}

-(void)setStage:(NSString *)stage {
    if (stage && stage.length > 0) {
        [self addExtraValue:stage forKey:@"stage"];
        self.eventInfo = @{@"stage" : stage};
    }
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
