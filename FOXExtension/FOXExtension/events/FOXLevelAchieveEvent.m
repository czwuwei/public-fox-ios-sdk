//
//  FOXAchievementEvent.m
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXLevelAchieveEvent.h"

@implementation FOXLevelAchieveEvent

-(instancetype)initWithLtvId:(NSUInteger)ltvId level:(NSInteger)level{
    self = [super initWithEventName:@"FOX_level" andLtvId:ltvId];

    if (self) {
        [self addExtraValue:[NSString stringWithFormat:@"%ld", (long)level] forKey:@"level"];
        self.eventInfo = @{ @"level" : @(level) };
    }

    return self;
}

@end
