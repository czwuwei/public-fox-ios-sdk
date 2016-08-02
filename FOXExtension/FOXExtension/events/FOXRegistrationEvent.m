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
    return [super initWithEventName:@"FOX_registration" andLtvId:ltvId];
}

-(instancetype) initWithEventName:(NSString *) eventName andLtvId:(NSUInteger) ltvId {
    return [super initWithEventName:eventName andLtvId:ltvId];
}

@end
