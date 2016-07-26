//
//  FOXStageAchieveEvent.h
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import <FOXSDK/FOXSDK.h>

@interface FOXStageAchieveEvent : FOXEvent

-(instancetype _Nullable)initWithLtvId:(NSUInteger)ltvId stage:(NSString* _Nullable) stage;

@end
