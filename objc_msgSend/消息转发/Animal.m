//
//  Animal.m
//  objc_msgSend
//
//  Created by xiekunpeng on 2020/7/4.
//  Copyright © 2020年 xboker. All rights reserved.
//

#import "Animal.h"

@implementation Animal





+  (id)forwardingTargetForSelector:(SEL)aSelector {
    return [super forwardingTargetForSelector:aSelector];
}

+  (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSMethodSignature *sig = [NSMethodSignature signatureWithObjCTypes:"v16@0:8"];
    return sig;
}

+ (void)forwardInvocation:(NSInvocation *)anInvocation {
    NSLog(@"Pig类中没有实现notRealizeClassMethod方法, 且没有做类方法的消息转发, 但是父类实现了消息转发, 也会有效");
}





@end
