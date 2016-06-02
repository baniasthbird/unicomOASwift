//
//  File.swift
//  unicomOASwfit
//
//  Created by hnsi-03 on 16/6/2.
//  Copyright © 2016年 zr-mac. All rights reserved.
//

import Foundation
import UIKit

/// cache文件路径
let cachesPath: String = NSSearchPathForDirectoriesInDomains(.CachesDirectory, .UserDomainMask, true).last!

/* 导航栏高度 */
let kNavigationH = 64
/* 工具栏高度 */
let kTabBarHeight = 49
/* 屏幕的宽 */
public let kSCREEN_WIDTH  = UIScreen.mainScreen().bounds.size.width
/* 屏幕的高 */
public let kSCREEN_HEIGHT  = UIScreen.mainScreen().bounds.size.height
/* 屏幕的宽 */
public let kMAIN_BOUNDS: CGRect = UIScreen.mainScreen().bounds


//机型判断
public let iphone4_4s = (kSCREEN_WIDTH==320 && kSCREEN_HEIGHT==480 ? true : false)

public let iphone5_5s = (kSCREEN_WIDTH==320 && kSCREEN_HEIGHT==568 ? true : false)

public let iphone6 = (kSCREEN_WIDTH==375 && kSCREEN_HEIGHT==667 ? true : false)

public let iphone6_plus = (kSCREEN_WIDTH==414 && kSCREEN_HEIGHT==736 ? true : false)
