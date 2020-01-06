//
//  CustomTabBarController.swift
//  himalayafm
//
//  Created by zm on 2020/1/6.
//  Copyright © 2020 fusu. All rights reserved.
//

import UIKit
import ESTabBarController_swift
import SwiftMessages

func setupTabBarStyle(delegate: UITabBarControllerDelegate?) -> ESTabBarController {
    let tabBarController = ESTabBarController()
    tabBarController.delegate = delegate
    tabBarController.title = "Irregularity"
    tabBarController.tabBar.shadowImage = UIImage(named: "transparent")
    tabBarController.didHijackHandler = {
        [weak tabBarController] tabbarController, viewController, index in
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            let warning = MessageView.viewFromNib(layout: .cardView)
            warning.configureTheme(.warning)
            warning.configureDropShadow()
            
            let iconText = ["🤔", "😳", "🙄", "😶"]
            warning.configureContent(title: "Warning", body: "暂时没有此功能", iconText: iconText.randomElement()!)
            warning.button?.isHidden = true
            var warningConfig = SwiftMessages.defaultConfig
            warningConfig.presentationContext = .window(windowLevel: UIWindow.Level.statusBar)
            SwiftMessages.show(config: warningConfig, view: warning)
        }
        
    }
    
    return tabBarController
}
