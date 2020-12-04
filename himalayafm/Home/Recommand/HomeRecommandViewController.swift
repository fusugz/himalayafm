//
//  HomeRecommandViewController.swift
//  himalayafm
//
//  Created by zm on 2020/1/13.
//  Copyright © 2020 fusu. All rights reserved.
//

import UIKit

class HomeRecommandViewController: UIViewController {
    
    private let kRecommandHeaderViewID = "RecommandHeaderView"
    private let kRecommandFooterViewID = "RecommandFooterView"
        
    private let kRecommandHeaderCellID = "RecommandHeaderCell"
    private let kGuessULikeCellID      = "GuessULikeCell"
    private let kHotVoiceBookCellID    = "VoiceBookCell"
    private let kAdvertizingCellID     = "AdvertizingCell"
    private let kOneTouchListenCellID  = "OneTouchListenCell"
    private let kRecommandForUCellID   = "RecommandForUCell"
    private let kHotLiveCellID         = "HotLiveCell"
     
    lazy var conllectionView : UICollectionView = {
        let customCollectionView = UICollectionView(frame:.zero, collectionViewLayout: UICollectionViewLayout())
        customCollectionView.delegate = self as? UICollectionViewDelegate
        customCollectionView.dataSource = self as? UICollectionViewDataSource
        
        customCollectionView.register(RecommandHeaderView.self, forCellWithReuseIdentifier:kRecommandHeaderViewID)
        customCollectionView.register(RecommandFooterView.self, forCellWithReuseIdentifier: kRecommandFooterViewID)
        
        return customCollectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
