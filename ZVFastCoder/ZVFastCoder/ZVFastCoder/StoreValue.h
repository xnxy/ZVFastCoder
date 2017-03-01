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
- (void)storeValue:(id)value key:(NSString *)key;
//取
- (id)valueWithKey:(NSString *)key;
//删
- (void)removeWithKey:(NSString *)key;

@end
