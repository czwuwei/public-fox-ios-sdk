//
//  FOXLevelAchievedEvent.h.m
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXLevelAchievedEvent.h"

@implementation FOXLevelAchievedEvent

-(instancetype) init {
    return [self initWithLtvId:0];
}

-(instancetype) initWithLtvId:(NSUInteger) ltvId {
    return [super initWithEventName:@"_achieved_level" andLtvId:ltvId];
}

@end




