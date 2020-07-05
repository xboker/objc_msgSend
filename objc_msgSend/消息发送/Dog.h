//
//  Dog.h
//  objc_msgSend
//
//  Created by xiekunpeng on 2020/7/3.
//  Copyright © 2020 xboker. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject

- (void)test1 ;
- (void)test2 ;
+ (void)classTest: (int)para;
@end

NS_ASSUME_NONNULL_END
