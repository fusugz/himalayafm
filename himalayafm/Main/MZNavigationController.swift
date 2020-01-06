//
//  MZNavigationController.swift
//  himalayafm
//
//  Created by zm on 2020/1/6.
//  Copyright © 2020 fusu. All rights reserved.
//

import UIKit

class MZNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        WRNavigationBar.defaultNavBarTintColor = ButtonColor
        WRNavigationBar.defaultNavBarTitleColor = UIColor.darkText
        WRNavigationBar.defaultShadowImageHidden = true
    }
}

extension MZNavigationController {
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
}
