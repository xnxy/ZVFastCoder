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

- (void)storeValue:(id)value key:(NSString *)key;

- (id)valueWithKey:(NSString *)key;

- (void)removeWithKey:(NSString *)key;

@end
