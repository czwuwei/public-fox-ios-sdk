//
//  FOXViewToppageEvent.m
//  FOXExtension
//
//  Created by 呉 維 on 2016/08/02.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXViewToppageEvent.h"

@implementation FOXViewToppageEvent

-(instancetype) init {
    return [self initWithLtvId:0];
}

-(instancetype) initWithLtvId:(NSUInteger) ltvId {
    return [super initWithEventName:@"_view_toppage" andLtvId:ltvId];
}

@end
