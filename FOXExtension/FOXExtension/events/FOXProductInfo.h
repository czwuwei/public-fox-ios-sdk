//
//  FOXProductInfo.h
//  FOXExtension
//
//  Created by 呉 維 on 2016/08/02.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FOXProductInfo : NSObject

@property (nonatomic, copy) NSString* id;
@property (nonatomic, copy) NSString* itemLocationId;
@property (nonatomic) double price;
@property (nonatomic) long quantity;

@end
