//
//  StoreValue.h
//  ZVFastCoder
//
//  Created by 周伟 on 1/3/17.
//  Copyright © 2017年 周伟. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StoreValue : NSObject

+ (StoreValue *)sharedInstance;
//存
- (void)zvStoreValue:(id)value key:(NSString *)key;
//取
- (id)zvValueWithKey:(NSString *)key;
//删
- (void)zvRemoveWithKey:(NSString *)key;

@end
