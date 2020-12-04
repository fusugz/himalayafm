//
//  HomeViewController.swift
//  himalayafm
//
//  Created by zm on 2020/1/6.
//  Copyright © 2020 fusu. All rights reserved.
//

import UIKit
import DNSPageView

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        setupPageView()
    }
    
    func setupPageView() {
        let style = PageStyle()
        style.isTitleScaleEnabled = true
        style.isTitleViewScrollEnabled = true
        style.isShowBottomLine = true
        style.titleColor = UIColor.lightGray
        style.titleSelectedColor = UIColor.darkText
        
        let titles = ["推荐", "分类", "VIP", "直播", "广播"]
        let controllers: [UIViewController] = [HomeRecommandViewController(), HomeClassifyViewController(), HomeVIPViewController(), HomeLiveViewController(), HomeBroadcastViewController()]
        
        for viewController in controllers {
            self.addChild(viewController)
        }
        
        let pageView = PageView(frame: CGRect(x: 0, y: NavigationBarHeight, width: ScreenWidth, height: ScreenHeight - NavigationBarHeight - 44.0), style: style, titles: titles, childViewControllers: controllers, startIndex: 0)
        pageView.contentView.backgroundColor = UIColor.red
        view.addSubview(pageView)
    }

}
