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
-(void) setItemId:(nonnull NSString*) itemId;

@end



#pragma mark - Twitter
@protocol FOXExTwitterEventDelegate<NSObject>

@optional
-(void) setItemId:(nonnull NSString*) itemId;

@end



#pragma mark - Criteo
@protocol FOXExCriteoEventDelegate<NSObject>

@optional
-(void) setDestination:(nonnull NSString*) destination;
-(void) setOrigin:(nonnull NSString*) origin;
-(void) setDin:(nonnull NSDate*) din;
-(void) setDout:(nonnull NSDate*) dout;
-(void) setPartnerId:(nonnull NSString*) partnerId;
-(void) setCategoryId:(nonnull NSString*) categoryId;

-(void) setTransactionId:(nonnull NSString*) transactionId;
-(void) addProductById:(nonnull NSString*) productId
        itemLocationId:(nullable NSString*) itemLocationId
                 price:(double) price
              quantity:(NSUInteger) quantity;
-(void) setDatafeed:(NSDictionary* _Nonnull) datafeed;

@end



#pragma mark - Vizury
@protocol FOXExVizuryEventDelegate<NSObject>

@optional
-(void) setCategoryId:(nonnull NSString*) categoryId;
-(void) addProductById:(nonnull NSString*) productId
        itemLocationId:(nullable NSString*) itemLocationId
                 price:(double) price
              quantity:(NSUInteger) quantity;

@end



#pragma mark - DynamicRemarketing
@protocol FOXExDynamicRemarketingEventDelegate<NSObject>

@optional
-(void) setDestination:(nonnull NSString*) destination;
-(void) setOrigin:(nonnull NSString*) origin;
-(void) setDin:(nonnull NSDate*) din;
-(void) setDout:(nonnull NSDate*) dout;
-(void) addProductById:(nonnull NSString*) productId
        itemLocationId:(nullable NSString*) itemLocationId
                 price:(double) price
              quantity:(NSUInteger) quantity;
-(void) setSearchTerm:(nonnull NSString*) searchTerm;

+(void) setGoogleCrmId:(nonnull NSString*) crmId;

@end



#pragma mark - DynalystGames
@protocol FOXExDynalystGamesEventDelegate<NSObject>

@optional
-(void) setDynalystAdvertiserId:(nonnull NSString*) advertiserId;

+(void) setDynalystGuid:(nonnull NSString*) guid;
+(void) setDynalystAdnt:(nonnull NSString*) adnt;
+(void) setDynalystExt:(NSDictionary* _Nonnull) extJson;

@end



#pragma mark - DynalystCommerce
@protocol FOXExDynalystCommerceEventDelegate<NSObject>

@optional
-(void) setTransactionId:(nonnull NSString*) transactionId;
-(void) addProductById:(nonnull NSString*) productId
        itemLocationId:(nullable NSString*) itemLocationId
                 price:(double) price
              quantity:(NSUInteger) quantity;
@end



#pragma mark - ChartBoost
@protocol FOXExChartBoostEventDelegate<NSObject>

@optional
-(void) setLocalizedTitle:(nonnull NSString*) localizedTitle;
-(void) setLocalizedDescription:(nonnull NSString*) localizedDescription;
-(void) setReciptValid:(BOOL) isValid;
-(void) setRecipt:(nonnull NSString*) receipt;

-(void) addTrackInfoByEventLabel:(nonnull NSString*) eventLabel
                      eventField:(double) eventField
                       mainLevel:(double) mainLevel
                        subLevel:(double) subLevel
                     description:(nullable NSString*) description
                        dateType:(nonnull NSString*) dateType;

@end





