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

class CustomTabBarController: ESTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    public func customTabBar(delegate: UITabBarControllerDelegate?) {
        
        self.delegate = delegate
        self.title = "Irregularity"
        self.tabBar.shadowImage = UIImage(named: "transparent")
        self.didHijackHandler = {
            [weak self] tabbarController, viewController, index in
            
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
        let home = HomeViewController()
        let listen = ListenViewController()
        let play = PlayViewController()
        let discover = DiscoverViewController()
        let mine = MineViewController()
        
        let titles = ["首页", "我听", "播放", "发现", "我的"]
        
        home.tabBarItem = ESTabBarItem.init(CommonContentView(), title: titles[0], image: UIImage.init(named: "tab_home_normal"), selectedImage: UIImage.init(named: "tab_home_highlighted"), tag: 0)
        listen.tabBarItem = ESTabBarItem.init(CommonContentView(), title: titles[1], image: UIImage.init(named: "tab_listen_normal"), selectedImage: UIImage.init(named: "tab_listen_highlighted"), tag: 1)
        play.tabBarItem = ESTabBarItem.init(IrregularityContentView(), title: nil, image: UIImage.init(named: "tab_play_normal"), selectedImage: UIImage.init(named: "tab_play_highlighted"), tag: 2)
        discover.tabBarItem = ESTabBarItem.init(CommonContentView(), title: titles[3], image: UIImage.init(named: "tab_discover_normal"), selectedImage: UIImage.init(named: "tab_discover_highlighted"), tag: 3)
        mine.tabBarItem = ESTabBarItem.init(CommonContentView(), title: titles[4], image: UIImage.init(named: "tab_mine_normal"), selectedImage: UIImage.init(named: "tab_mine_highlighted"), tag: 4)
        
        let homeNav = NavigationController.init(rootViewController: home)
        let listenNav = NavigationController.init(rootViewController: listen)
        let playNav = NavigationController.init(rootViewController: play)
        let discoverNav = NavigationController.init(rootViewController: discover)
        let mineNav = NavigationController.init(rootViewController: mine)
        homeNav.title = titles[0]
        listenNav.title = titles[1]
        playNav.title = titles[2]
        discoverNav.title = titles[3]
        mineNav.title = titles[4]
    
        self.viewControllers = [homeNav, listenNav, playNav, discoverNav, mineNav]
    }
}
