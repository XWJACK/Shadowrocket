//
//  ReverseMethodHelper.m
//
//  Created by Jack on 2018/12/10.
//  Copyright © 2018 XWJACK. All rights reserved.
//

#import "ReverseMethodHelper.h"


void xwjack_hookMethod(Class originalClass, SEL originalSelector, Class swizzledClass, SEL swizzledSelector) {
    NSLog(@"🍎 XWJACK Begin hook %@ %s", originalClass, originalSelector);
    Method originalMethod = class_getInstanceMethod(originalClass, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(swizzledClass, swizzledSelector);
    if (originalMethod && swizzledMethod) {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    } else {
        NSLog(@"🍎❌ XWJACK exchange implementation failure. Because of %@ or %@ do not exist.", originalMethod, swizzledMethod);
    }
}
void xwjack_hookMethodName(const char *originalClassName, SEL originalSelector, Class swizzledClass, SEL swizzledSelector) {
    xwjack_hookMethod(objc_getClass(originalClassName), originalSelector, swizzledClass, swizzledSelector);
}


void xwjack_hookClassMethod(Class originalClass, SEL originalSelector, Class swizzledClass, SEL swizzledSelector) {
    NSLog(@"🍏 XWJACK Begin hook %@ %s", originalClass, originalSelector);
    Method originalMethod = class_getClassMethod(originalClass, originalSelector);
    Method swizzledMethod = class_getClassMethod(swizzledClass, swizzledSelector);
    if (originalMethod && swizzledMethod) {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    } else {
        NSLog(@"🍏❌ XWJACK exchange implementation failure. Because of %@ or %@ do not exist.", originalMethod, swizzledMethod);
    }
}
void xwjack_hookClassMethodName(const char *originalClassName, SEL originalSelector, Class swizzledClass, SEL swizzledSelector) {
    xwjack_hookClassMethod(objc_getClass(originalClassName), originalSelector, swizzledClass, swizzledSelector);
}


@implementation NSObject (ReverseMethodHelper)
- (void)xwjack_hookMethodWithSelector:(SEL)originalSelector swizzledClass:(Class)swizzledClass swizzledSelector:(SEL)swizzledSelector {
    xwjack_hookMethod(self.class, originalSelector, swizzledClass, swizzledSelector);
}
+ (void)xwjack_hookClassMethodWithSelector:(SEL)originalSelector swizzledClass:(Class)swizzledClass swizzledSelector:(SEL)swizzledSelector {
    xwjack_hookClassMethod(self.class, originalSelector, swizzledClass, swizzledSelector);
}
@end
