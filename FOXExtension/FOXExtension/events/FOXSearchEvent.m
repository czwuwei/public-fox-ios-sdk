//
//  FOXSearchEvent.m
//  FOXExtension
//
//  Created by 呉 維 on 2016/08/02.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import "FOXSearchEvent.h"

@implementation FOXSearchEvent

-(instancetype) init {
    return [self initWithLtvId:0];
}

-(instancetype) initWithLtvId:(NSUInteger) ltvId {
    return [super initWithEventName:@"_search" andLtvId:ltvId];
}

-(void) setSearchTerm:(NSString *) searchTerm {
    [self putJsonValue:searchTerm forKey:@"search_term"];
}

@end
