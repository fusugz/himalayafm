//
//  Header.swift
//  himalayafm
//
//  Created by zm on 2020/1/6.
//  Copyright © 2020 fusu. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher
import SnapKit
import SwiftyJSON
import HandyJSON
import SwiftMessages

let ScreenWidth  = UIScreen.main.bounds.size.width
let ScreenHeight = UIScreen.main.bounds.size.height

let ButtonColor  = UIColor(red: 242.0/255.0, green: 77.0/255.0, blue: 51.0/255.0, alpha: 1.0)
let DownColor    = UIColor.init(red: 240.0/255.0, green: 241.0/255.0, blue: 244.0/255.0, alpha: 1.0)

let IS_IPhoneX   = (ScreenHeight >= 812.0)
let NavigationBarHeight: CGFloat = IS_IPhoneX ? 88.0 : 64.0
let TabBarHeight: CGFloat = IS_IPhoneX ? 49.0 + 34.0 : 49.0
