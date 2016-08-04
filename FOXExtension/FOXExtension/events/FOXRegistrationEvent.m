//
//  FOXRegistration.m
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXRegistrationEvent.h"

@implementation FOXRegistrationEvent

-(instancetype) initWithLtvId:(NSUInteger) ltvId {
    return [super initWithEventName:@"fox_registration" andLtvId:ltvId];
}

@end
