//
//  NETunnelProviderProtocol+XWJACK.m
//  ShadowrocketDylib
//
//  Created by Jack on 2019/5/15.
//  Copyright © 2019 XWJACK. All rights reserved.
//

#import "NETunnelProviderProtocol+XWJACK.h"
#import "ReverseMethodHelper.h"


@implementation NSObject (XWJACK)
- (void)hook_setProviderBundleIdentifier:(NSString *)providerBundleIdentifier {
//    [self hook_setProviderBundleIdentifier:@"com.xwjackc.Shadowrocket.PacketTunnel"];
}
+ (void)load {
//    xwjack_hookMethod(objc_getClass("NETunnelProviderProtocol"), @selector(setProviderBundleIdentifier:), self, @selector(hook_setProviderBundleIdentifier:));
}
@end
