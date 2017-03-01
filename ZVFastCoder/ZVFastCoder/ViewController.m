//
//  ViewController.m
//  ZVFastCoder
//
//  Created by 周伟 on 1/3/17.
//  Copyright © 2017年 周伟. All rights reserved.
//

#import "ViewController.h"
#import "StoreValue.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *dataAry;

@end

@implementation ViewController

- (NSMutableArray *)dataAry{
	if (!_dataAry) {
		_dataAry = [NSMutableArray arrayWithObjects:@"saagfshjkfhgdsfsfghjklljhgfdsafghjkljhgfdsadfghjkhgfdsadfffffffffffffghjkjhgfdssa", nil];
	}
	return _dataAry;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	self.view.backgroundColor = [UIColor purpleColor];
	// Do any additional setup after loading the view, typically from a nib.
	
	
	
	
	NSLog(@"-----%@------",NSHomeDirectory());
	
	
}

#pragma mark -
#pragma mark --- 存 ---
- (IBAction)saveBtn:(id)sender {
	
	StoreValue *storeValue = [StoreValue sharedInstance];
	[storeValue storeValue:self.dataAry key:@"hello"];
	
	NSLog(@"-----%@------",NSHomeDirectory());
	
}

#pragma mark -
#pragma mark --- 取 ---
- (IBAction)takeBtn:(id)sender {
	
	StoreValue *storeValue = [StoreValue sharedInstance];

	NSLog(@"-----%@------取：%@----",NSHomeDirectory(),[storeValue valueWithKey:@"hello"]);
	
}

#pragma mark -
#pragma mark --- 删 ---
- (IBAction)delete:(id)sender {
	
	StoreValue *storeValue = [StoreValue sharedInstance];
	
	[storeValue removeWithKey:@"hello"];
	
	NSLog(@"-----%@------",NSHomeDirectory());
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
