//
//  Dog.m
//  objc_msgSend
//
//  Created by xiekunpeng on 2020/7/3.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "Dog.h"

@implementation Dog
- (void)test1  {
    NSLog(@"%s", __func__);
}
- (void)test2  {
    NSLog(@"%s", __func__);
}
+ (void)classTest: (int)para {
NSLog(@"%d %s", para, __func__);
}
@end
