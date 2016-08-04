//
//  FOXViewContentEvent.m
//  FOXExtension
//
//  Created by 呉 維 on 2016/08/02.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXViewContentEvent.h"

@implementation FOXViewContentEvent

-(instancetype) init {
    return [self initWithLtvId:0];
}

-(instancetype) initWithLtvId:(NSUInteger) ltvId {
    return [super initWithEventName:@"_view_content" andLtvId:ltvId];
}

-(void) setItemId:(NSString *) itemId {
    self.sku = itemId;
}

@end
