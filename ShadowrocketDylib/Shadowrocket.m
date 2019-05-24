//
//  Shadowrocket.m
//  ShadowrocketDylib
//
//  Created by Jack on 2019/5/15.
//  Copyright © 2019 XWJACK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <mach-o/dyld.h>

/// Replace packertunnel idenrifier
//const char* packetTunnelIdentifier = "com.xwjackc.Shadowrocket.PacketTunnel";
//const char* groupIdentifier = "group.com.xwjackc.Shadowrocket";

static void __attribute__((constructor)) initialize(void) {
//    intptr_t offset = _dyld_get_image_vmaddr_slide(0);
//    char hexChar[8];
//    printf("Address Offset: %08x\n", offset);
//    char* rawPacketTunnelIdentifier = 0x00000001002deb48 + offset;
//    strcpy(rawPacketTunnelIdentifier, packetTunnelIdentifier);

//    char* rawGroupIdentifier = 0x00000001002de268 + offset;
//    strcpy(rawGroupIdentifier, groupIdentifier);
}
