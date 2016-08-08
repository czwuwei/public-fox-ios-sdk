//
//  FOXViewToppageEvent.m
//  FOXExtension
//
//  Created by Wuwei on 2016/08/02.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXViewToppageEvent.h"

@implementation FOXViewToppageEvent

-(instancetype) init {
    return [self initWithLtvId:0];
}

-(instancetype) initWithLtvId:(NSUInteger) ltvId {
    self = [super initWithEventName:@"_view_toppage" andLtvId:ltvId];
    if (self) {
        if (ltvId > 0) {
            [self putJsonValue:@(ltvId) forKey:@"fox_cvpoint"];
        }
    }

    return self;
}

@end
