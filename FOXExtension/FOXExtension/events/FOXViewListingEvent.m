//
//  FOXViewListingEvent.m
//  FOXExtension
//
//  Created by Wuwei on 2016/08/02.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXViewListingEvent.h"

@implementation FOXViewListingEvent

-(instancetype) init {
    return [self initWithLtvId:0];
}

-(instancetype) initWithLtvId:(NSUInteger) ltvId {
    return [super initWithEventName:@"_view_listing" andLtvId:ltvId];
}

@end
