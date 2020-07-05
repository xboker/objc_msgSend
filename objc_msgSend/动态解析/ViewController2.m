//
//  ViewController2.m
//  objc_msgSend
//
//  Created by xiekunpeng on 2020/7/3.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "ViewController2.h"
#import "Cat.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];

    Cat *cat = [[Cat alloc] init];
    [cat notRealizeMethod];


}




@end
