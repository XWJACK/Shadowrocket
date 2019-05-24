//
//  NSObject+DLWServerNotify_XWJACK.m
//  ShadowrocketDylib
//
//  Created by Jack on 2019/5/24.
//  Copyright © 2019 XWJACK. All rights reserved.
//

#import "NSObject+DLWServerNotify_XWJACK.h"
#import "ReverseMethodHelper.h"

@implementation NSObject (DLWServerNotify_XWJACK)
- (void)hook_notify {
//    frame #1: 0x1ac7b63a8 CoreFoundation`__exceptionPreprocess + 232
//    frame #2: 0x1ab9bbd00 libobjc.A.dylib`objc_exception_throw + 60
//    frame #3: 0x1ac6bbbe4 CoreFoundation`-[NSCache init]
//    frame #4: 0x1ad1f61a8 Foundation`_NSFileHandleRaiseOperationException + 164
//    -[DLWServerNotify notify]
//    frame #5: 0x100c8f3b8 Shadowrocket`___lldb_unnamed_symbol2007$$Shadowrocket + 104
//    frame #6: 0x100c4220c Shadowrocket`___lldb_unnamed_symbol416$$Shadowrocket + 200
//    frame #7: 0x100c4431c Shadowrocket`___lldb_unnamed_symbol468$$Shadowrocket + 48
//    frame #8: 0x1ad22d15c Foundation`__57-[NSNotificationCenter addObserver:selector:name:object:]_block_invoke_2 + 28
//    frame #9: 0x1ac724acc CoreFoundation`__CFNOTIFICATIONCENTER_IS_CALLING_OUT_TO_AN_OBSERVER__ + 28
//    frame #10: 0x1ac724a8c CoreFoundation`___CFXRegistrationPost_block_invoke + 68
//    frame #11: 0x1ac723f30 CoreFoundation`_CFXRegistrationPost + 420
//    frame #12: 0x1ac723bbc CoreFoundation`___CFXNotificationPost_block_invoke + 100
//    frame #13: 0x1ac69a768 CoreFoundation`-[_CFXNotificationRegistrar find:object:observer:enumerator:] + 1504
//    frame #14: 0x1ac723664 CoreFoundation`_CFXNotificationPost + 716
//    frame #15: 0x1ad11e7c4 Foundation`-[NSNotificationCenter postNotificationName:object:userInfo:] + 72
//    frame #16: 0x1d9a7e398 UIKitCore`-[UIApplication _stopDeactivatingForReason:] + 1340
//    frame #17: 0x1d931c10c UIKitCore`__125-[_UICanvasLifecycleSettingsDiffAction performActionsForCanvas:withUpdatedScene:settingsDiff:fromSettings:transitionContext:]_block_invoke + 488
//    frame #18: 0x1d931ce5c UIKitCore`_performActionsWithDelayForTransitionContext + 120
//    frame #19: 0x1d931beb8 UIKitCore`-[_UICanvasLifecycleSettingsDiffAction performActionsForCanvas:withUpdatedScene:settingsDiff:fromSettings:transitionContext:] + 260
//    frame #20: 0x1d9320ea8 UIKitCore`-[_UICanvas scene:didUpdateWithDiff:transitionContext:completion:] + 364
//    frame #21: 0x1d9667904 UIKitCore`-[UIApplicationSceneClientAgent scene:handleEvent:withCompletion:] + 480
//    frame #22: 0x1af178c58 FrontBoardServices`__80-[FBSSceneImpl updater:didUpdateSettings:withDiff:transitionContext:completion:]_block_invoke_3 + 244
//    frame #23: 0x1010a4778 libdispatch.dylib`_dispatch_client_callout + 20
//    frame #24: 0x1010a833c libdispatch.dylib`_dispatch_block_invoke_direct + 356
//    frame #25: 0x1af1b518c FrontBoardServices`__FBSSERIALQUEUE_IS_CALLING_OUT_TO_A_BLOCK__ + 48
//    frame #26: 0x1af1b4e08 FrontBoardServices`-[FBSSerialQueue _performNext] + 436
//    frame #27: 0x1af1b5404 FrontBoardServices`-[FBSSerialQueue _performNextFromRunLoopSource] + 56
//    frame #28: 0x1ac746444 CoreFoundation`__CFRUNLOOP_IS_CALLING_OUT_TO_A_SOURCE0_PERFORM_FUNCTION__ + 28
//    frame #29: 0x1ac7463c0 CoreFoundation`__CFRunLoopDoSource0 + 92
//    frame #30: 0x1ac745c7c CoreFoundation`__CFRunLoopDoSources0 + 180
//    frame #31: 0x1ac740950 CoreFoundation`__CFRunLoopRun + 988
//    frame #32: 0x1ac740254 CoreFoundation`CFRunLoopRunSpecific + 452
//    frame #33: 0x1ae97fd8c GraphicsServices`GSEventRunModal + 108
//    frame #34: 0x1d9a884c0 UIKitCore`UIApplicationMain + 216
//    frame #35: 0x100cb8ae4 Shadowrocket`___lldb_unnamed_symbol2850$$Shadowrocket + 88
//    frame #36: 0x1ac1fcfd8 libdyld.dylib`start + 4
    NSLog(@"XWJACK hook notify because of exception.");
}
+ (void)load {
    xwjack_hookMethod(objc_getClass("DLWServerNotify"), @selector(notify), self.class, @selector(hook_notify));
}
@end
