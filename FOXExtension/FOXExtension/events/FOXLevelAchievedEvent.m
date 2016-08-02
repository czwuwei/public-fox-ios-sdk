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

-(void) setTrackInfoList:(NSArray<FOXLevelInfo *> *) trackInfoList {
    NSMutableArray* productJsonArray = [NSMutableArray array];
    for (FOXLevelInfo* trackInfo in trackInfoList) {
        NSMutableDictionary* trackInfoJson = [NSMutableDictionary dictionary];

        if (trackInfo.eventLabel) {
            [trackInfoJson setValue:trackInfo.eventLabel forKey:@"event_label"];
        }
        if (trackInfo.eventField > 0) {
            [trackInfoJson setValue:@(trackInfo.eventField) forKey:@"event_field"];
        }
        if (trackInfo.mainLevel > 0) {
            [trackInfoJson setValue:@(trackInfo.mainLevel) forKey:@"main_level"];
        }
        if (trackInfo.subLevel > 0) {
            [trackInfoJson setValue:@(trackInfo.subLevel) forKey:@"sub_level"];
        }
        if (trackInfo.description) {
            [trackInfoJson setValue:trackInfo.description forKey:@"description"];
        }
        if (trackInfo.dateType) {
            [trackInfoJson setValue:trackInfo.dateType forKey:@"date_type"];
        }

        [productJsonArray addObject:trackInfoJson];
    }

    [self putJsonValue:productJsonArray forKey:@"track_info"];
}


@end




