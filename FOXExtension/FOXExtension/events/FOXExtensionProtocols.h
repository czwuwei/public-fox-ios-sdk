//
//  CooperationProtocols.h
//  FOXExtension
//
//  Created by Wuwei on 2016/08/04.
//  Copyright © 2016年 CyberZ. All rights reserved.
//
#pragma mark - Facebook
@protocol FOXExFacebookEventDelegate<NSObject>

@optional
-(void) setItemId:(NSString* _Nonnull) itemId;

@end

#pragma mark - Twitter
@protocol FOXExTwitterEventDelegate<NSObject>

@optional
-(void) setItemId:(NSString* _Nonnull) itemId;

@end



#pragma mark - Vizury
@protocol FOXExVizuryEventDelegate<NSObject>

@optional
-(void) setCategoryId:(NSString* _Nonnull) categoryId;
-(void) addProductById:(NSString* _Nonnull) productId
        itemLocationId:(NSString* _Nullable) itemLocationId
                 price:(double) price
              quantity:(NSUInteger) quantity;

@end



#pragma mark - DynamicRemarketing
@protocol FOXExDynamicRemarketingEventDelegate<NSObject>

@optional
-(void) setDestination:(NSString* _Nonnull) destination;
-(void) setOrigin:(NSString* _Nonnull) origin;
-(void) setDin:(NSString* _Nonnull) din;
-(void) setDout:(NSString* _Nonnull) dout;
-(void) addProductById:(NSString* _Nonnull) productId
        itemLocationId:(NSString* _Nullable) itemLocationId
                 price:(double) price
              quantity:(NSUInteger) quantity;
-(void) setSearchTerm:(NSString* _Nonnull) searchTerm;

+(void) setGoogleCrmId:(NSString* _Nonnull) crmId;

@end



#pragma mark - DynalystGames
@protocol FOXExDynalystGamesEventDelegate<NSObject>

@optional
-(void) setDynalystAdVertiserId:(NSString* _Nonnull) advertiserId;

+(void) setDynalystGuid:(NSString* _Nonnull) guid;
+(void) setDynalystAdnt:(NSString* _Nonnull) adnt;
+(void) setDynalystExt:(NSDictionary* _Nonnull) extJson;

@end



#pragma mark - DynalystCommerce
@protocol FOXExDynalystCommerceEventDelegate<NSObject>

@optional
-(void) setTransactionId:(NSString* _Nonnull) transactionId;
-(void) addProductById:(NSString* _Nonnull) productId
        itemLocationId:(NSString* _Nullable) itemLocationId
                 price:(double) price
              quantity:(NSUInteger) quantity;
@end



#pragma mark - ChartBoost
@protocol FOXExChartBoostEventDelegate<NSObject>

@optional
-(void) setLocalizedTitle:(NSString* _Nonnull) localizedTitle;
-(void) setLocalizedDescription:(NSString* _Nonnull) localizedDescription;
-(void) setReciptValid:(BOOL) isValid;
-(void) setRecipt:(NSString* _Nonnull) receipt;

-(void) addTrackInfoByEventLabel:(NSString* _Nonnull) eventLabel
                      eventField:(double) eventField
                       mainLevel:(double) mainLevel
                        subLevel:(double) subLevel
                     description:(NSString* _Nullable) description
                        dateType:(NSString* _Nonnull) dateType;

@end





