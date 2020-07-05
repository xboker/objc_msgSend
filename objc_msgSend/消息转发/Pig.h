//
//  Pig.h
//  objc_msgSend
//
//  Created by xiekunpeng on 2020/7/3.
//  Copyright © 2020 xboker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"

NS_ASSUME_NONNULL_BEGIN

@interface Pig : Animal


///此方法未实现
- (void)notRealizeInstanceMethod;

///此方法未实现
+ (void)notRealizeClassMethod;



@end

NS_ASSUME_NONNULL_END
