//
//  FOXRegistration.m
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXRegistration.h"

@implementation FOXRegistration

-(instancetype)initWithLtvId:(NSUInteger)ltvId userId:(NSString *)userId{
    self = [super initWithEventName:@"FOX_registrationl" andLtvId:ltvId];
    if (self) {
        if (userId && userId.length > 0) {
            self.buid = userId;
            self.eventInfo = @{ @"userId" : userId };
        }
    }
    return self;
}

@end
