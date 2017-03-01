//
//  StoreValue.m
//  ZVFastCoder
//
//  Created by 周伟 on 1/3/17.
//  Copyright © 2017年 周伟. All rights reserved.
//

#import "StoreValue.h"
#import "FastCoder.h"

@implementation StoreValue

+ (StoreValue *)sharedInstance{
	static StoreValue *storeValue = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		storeValue = [[StoreValue alloc] init];
	});
	
	return storeValue;
	
}

#pragma mark -
#pragma mark --- 存 ----
- (void)zvstoreValue:(id)value key:(NSString *)key{
	NSData *data = [FastCoder dataWithRootObject:value];
	
	if (!data) {
		return;
	}
	NSString *fullPath = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:key];
	BOOL flag = [data writeToFile:fullPath atomically:YES];
	if (flag) {
		NSLog(@"----------%@---------",@"保存沙盒成功");
	}

}

#pragma mark -
#pragma mark --- 取 -----
- (id)zvvalueWithKey:(NSString *)key{
	NSString *fullPath = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:key];
	NSData *data = [NSData dataWithContentsOfFile:fullPath];
	return [FastCoder objectWithData:data];
}

#pragma mark -
#pragma mark --- 移除 -----
- (void)zvremoveWithKey:(NSString *)key{
	NSString *fullPath = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:key];
	NSFileManager *fileManager = [NSFileManager defaultManager];
	BOOL fileExists = [fileManager fileExistsAtPath:fullPath];
	if (fileExists) {
		[fileManager removeItemAtPath:fullPath error:nil];
	}
}

@end
