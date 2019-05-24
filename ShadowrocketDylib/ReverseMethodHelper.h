//
//  ReverseMethodHelper.h
//
//  Created by Jack on 2018/12/10.
//  Copyright © 2018 XWJACK. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <objc/runtime.h>

void xwjack_hookMethod(Class originalClass, SEL originalSelector, Class swizzledClass, SEL swizzledSelector);
void xwjack_hookMethodName(const char *originalClassName, SEL originalSelector, Class swizzledClass, SEL swizzledSelector);

void xwjack_hookClassMethod(Class originalClass, SEL originalSelector, Class swizzledClass, SEL swizzledSelector);
void xwjack_hookClassMethodName(const char *originalClassName, SEL originalSelector, Class swizzledClass, SEL swizzledSelector);

@interface NSObject (ReverseMethodHelper)

- (void)xwjack_hookMethodWithSelector:(SEL)originalSelector
                        swizzledClass:(Class)swizzledClass
                     swizzledSelector:(SEL)swizzledSelector;

+ (void)xwjack_hookClassMethodWithSelector:(SEL)originalSelector
                             swizzledClass:(Class)swizzledClass
                          swizzledSelector:(SEL)swizzledSelector;

@end
