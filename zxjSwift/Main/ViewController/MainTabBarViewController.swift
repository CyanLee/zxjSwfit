//
//  MainTabBarViewController.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/14.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupInit()
        setUpAllChildViewController()
    }

    func setupInit() {
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: titleEdgeColor(), NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14.0)], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: titleMainColor(), NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 12.0)], for: .selected)
    }
    
    func setUpAllChildViewController() {
        setUpOneChildViewController(viewController: HomeViewController(), image: UIImage(named: "home_icon_nor")!, selectedImage: UIImage(named: "home_icon_sel")!.withRenderingMode(.alwaysOriginal), title: "首页")
        setUpOneChildViewController(viewController: MakeMoneyViewController(), image: UIImage(named: "makeMoney_icon_nor")!, selectedImage: UIImage(named: "makeMoney_icon_sel")!.withRenderingMode(.alwaysOriginal), title: "赚钱")
        setUpOneChildViewController(viewController: MineViewController(), image: UIImage(named: "mine_icon_nor")!, selectedImage: UIImage(named: "mine_icon_sel")!.withRenderingMode(.alwaysOriginal), title: "我的")
    }
    
    func setUpOneChildViewController(viewController: UIViewController, image: UIImage, selectedImage: UIImage, title: NSString) {
        let navVC = MainNaveViewController.init(rootViewController: viewController)
        navVC.tabBarItem = UITabBarItem.init(title: title as String, image: image, selectedImage: selectedImage)
        self.addChild(navVC)
    }

}
