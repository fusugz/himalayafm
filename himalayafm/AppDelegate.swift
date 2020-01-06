//
//  AppDelegate.swift
//  himalayafm
//
//  Created by zm on 2020/1/6.
//  Copyright © 2020 fusu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let tabBarController = MZCustomTabBarController()
        tabBarController.customTabBar(delegate: self as? UITabBarControllerDelegate)
        
        self.window?.backgroundColor = UIColor.white
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    

}

