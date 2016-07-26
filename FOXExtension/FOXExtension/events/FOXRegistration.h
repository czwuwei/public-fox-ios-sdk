//
//  FOXRegistration.h
//  FOXExtension
//
//  Created by Wuwei on 2016/07/22.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import <FOXSDK/FOXSDK.h>

@interface FOXRegistration : FOXEvent

-(instancetype _Nullable )initWithLtvId:(NSUInteger)ltvId userId:(NSString* _Nullable) userId;

@end
