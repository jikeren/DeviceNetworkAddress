//
//  UIDevice+IPAddress.h
//  GatewayDemo
//
//  Created by LS on 05/05/2017.
//  Copyright © 2017 LS. All rights reserved.
//

#import <UIKit/UIKit.h>      

@interface UIDevice (IPAddress)

/**
 * 获取设备本地的IP地址
 * @return 本地IP地址
 */
- (NSString *)localIPAddress;

/**
 * 获取设备本地网关地址
 * @return 本地网关地址
 */
- (NSString *)gatewayIPAddress;

/**
 * 获取设备本地DNS服务器地址
 * @return 本地DNS服务器地址
 */
- (NSString *)localDnsServerIpAddress;

@end
