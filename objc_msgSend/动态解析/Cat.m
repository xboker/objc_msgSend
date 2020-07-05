//
//  Cat.m
//  objc_msgSend
//
//  Created by xiekunpeng on 2020/7/4.
//  Copyright © 2020年 xboker. All rights reserved.
//

#import "Cat.h"
#import <objc/runtime.h>

@implementation Cat

- (void)HandleNotRealizedMethod {
    NSLog(@"HandleNotRealizedMethod : %s", __func__);
}

/*
 对notRealizeMethod方法, 没有实现, 调用后;
 实现了resolveInstanceMethod方法,开始动态解析;
 没有实现resolveInstanceMethod, 程序crash抛出unrecognized selector sent to instance;
 开始动态解析
 */
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if (sel  == @selector(notRealizeMethod)) {
        SEL handelSel = @selector(HandleNotRealizedMethod);
        Method handleMethod = class_getInstanceMethod(self, handelSel);
        IMP  imp  = class_getMethodImplementation(self, handelSel);
        /*
         为某个类添加Method;
         参数1: 为哪个类添加方法;
         参数2: 为哪个方法添加实现;
         参数3: 方法的具体实现;
         参数4: 方法的编码格式;
         */
        class_addMethod(self, sel, imp, method_getTypeEncoding(handleMethod));
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}

@end
