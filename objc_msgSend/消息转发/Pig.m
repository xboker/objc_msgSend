//
//  Pig.m
//  objc_msgSend
//
//  Created by xiekunpeng on 2020/7/3.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "Pig.h"
#import "Piggy.h"
#import "Dog.h"


@implementation Pig





///动态解析阶段, 不处理或者处理不成功, 进入消息转发阶段
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    return [super resolveInstanceMethod:sel];
}

+  (id)forwardingTargetForSelector:(SEL)aSelector {
    return [super forwardingTargetForSelector:aSelector];
}



/*
 如果forwardingTargetForSelector并不能返回一个有效的对象; 开始进入方法签名阶段
 
 */
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    /*
     方法编码, 一定要返回aSelector的编码格式;
     如果返回一个合理的值, 则调用forwardInvo cation方法;
     */
    NSMethodSignature *sig = [NSMethodSignature signatureWithObjCTypes:"v16@0:8"];
    return sig;
}


/*
 到了这一步, 可以做任何操作了
 类似KVC是实现了setValue: forUndefinedKey:即使没有相应key, 实现了此方法, 什么都不做也不会崩溃;
 
 NSInvocation封装了一个方法的调用信息; 调用者, 方法, 方法编码;
 target: 方法之前的调用者, 可更改为其他调用者;
 selector : 需要调用的方法, 可更改为其他方法;
 methodSignature : 方法的签名信息; 不可更改;
 
 只要target和selector是配套合理的,methodSignature可以忽略;例如:
 anInvocation.target = [Dog class];
 anInvocation.selector = @selector(classTest:);
 [anInvocation invoke];
 

 */
-  (void)forwardInvocation:(NSInvocation *)anInvocation {
    anInvocation.target = [Dog class];
    anInvocation.selector = @selector(classTest:);
    [anInvocation invoke];
    
 }


@end
