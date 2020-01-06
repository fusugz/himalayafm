//
//  MZCustomTabBarController.swift
//  himalayafm
//
//  Created by zm on 2020/1/6.
//  Copyright © 2020 fusu. All rights reserved.
//

import UIKit
import ESTabBarController_swift
import SwiftMessages

class MZCustomTabBarController: ESTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    public func customTabBar(delegate: UITabBarControllerDelegate?) {
        
        self.delegate = delegate
        self.title = "Irregularity"
        self.tabBar.shadowImage = UIImage(named: "transparent")
        self.didHijackHandler = {
            [weak tabBarController] tabbarController, viewController, index in
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                let warning = MessageView.viewFromNib(layout: .cardView)
                warning.configureTheme(.warning)
                warning.configureDropShadow()
                
                let iconText = ["1", "2", "3", "4"]
                warning.configureContent(title: "Warning", body: "暂时没有此功能", iconText: iconText.randomElement()!)
                warning.button?.isHidden = true
                var warningConfig = SwiftMessages.defaultConfig
                warningConfig.presentationContext = .window(windowLevel: UIWindow.Level.statusBar)
                SwiftMessages.show(config: warningConfig, view: warning)
            }
        }
        
        // Tab bar items
        let home = MZHomeViewController()
        let listen = MZListenViewController()
        let play = MZPlayViewController()
        let discover = MZDiscoverViewController()
        let mine = MZMineViewController()
        
        home.tabBarItem = ESTabBarItem.init(MZIrregularityContentView(), title: "首页", image: UIImage.init(named: "tab_home_normal"), selectedImage: UIImage.init(named: "tab_home_highlighted"), tag: 0)
        listen.tabBarItem = ESTabBarItem.init(MZIrregularityContentView(), title: "我听", image: UIImage.init(named: "tab_listen_normal"), selectedImage: UIImage.init(named: "tab_listen_highlighted"), tag: 1)
        play.tabBarItem = ESTabBarItem.init(MZIrregularityContentView(), title: nil, image: UIImage.init(named: "tab_play_normal"), selectedImage: UIImage.init(named: "tab_play_highlighted"), tag: 2)
        discover.tabBarItem = ESTabBarItem.init(MZIrregularityContentView(), title: "发现", image: UIImage.init(named: "tab_discover_normal"), selectedImage: UIImage.init(named: "tab_discover_highlighted"), tag: 3)
        mine.tabBarItem = ESTabBarItem.init(MZIrregularityContentView(), title: "我的", image: UIImage.init(named: "tab_mine_normal"), selectedImage: UIImage.init(named: "tab_mine_highlighted"), tag: 4)
        
        
        
    }
}
