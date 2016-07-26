//
//  FOXStageAchieveEvent.m
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXStageAchieveEvent.h"

@implementation FOXStageAchieveEvent

-(instancetype)initWithLtvId:(NSUInteger)ltvId stage:(NSString *)stage {
    self = [super initWithEventName:@"FOX_stage" andLtvId:ltvId];
    if (self) {
        if (stage && stage.length > 0) {
            [self addExtraValue:stage forKey:@"stage"];
            self.eventInfo = @{@"stage" : stage};
        }
    }
    return self;
}

@end
