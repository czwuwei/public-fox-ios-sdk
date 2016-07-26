//
//  FOXAchievementEvent.h
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import <FOXSDK/FOXSDK.h>

@interface FOXLevelAchieveEvent : FOXEvent

-(instancetype)initWithLtvId:(NSUInteger)ltvId level:(NSInteger) level;

@end
