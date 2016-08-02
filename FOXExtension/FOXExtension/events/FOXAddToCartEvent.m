//
//  FOXAddToCartEvent.m
//  FOXExtension
//
//  Created by 呉 維 on 2016/08/02.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXAddToCartEvent.h"

@implementation FOXAddToCartEvent

-(instancetype) init {
    return [self initWithLtvId:0];
}

-(instancetype) initWithLtvId:(NSUInteger) ltvId {
    return [super initWithEventName:@"_add_to_cart" andLtvId:ltvId];
}

-(void) setCategoryId:(NSString *) categoryId {
    [self putJsonValue:categoryId forKey:@"category_id"];
}

@end
