//
//  NavigationController.swift
//  himalayafm
//
//  Created by zm on 2020/1/6.
//  Copyright © 2020 fusu. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        WRNavigationBar.defaultNavBarBarTintColor = UIColor.init(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1.0)
        WRNavigationBar.defaultNavBarTintColor = ButtonColor
        WRNavigationBar.defaultNavBarTitleColor = UIColor.darkText
        WRNavigationBar.defaultShadowImageHidden = true
    }
}

extension NavigationController {
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
}
