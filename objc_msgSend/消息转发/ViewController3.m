//
//  ViewController3.m
//  objc_msgSend
//
//  Created by xiekunpeng on 2020/7/3.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "ViewController3.h"
#import "Pig.h"
@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    Pig *pig = [[Pig alloc] init];
    [pig notRealizeInstanceMethod];
    
    [Pig notRealizeClassMethod];

}



@end
