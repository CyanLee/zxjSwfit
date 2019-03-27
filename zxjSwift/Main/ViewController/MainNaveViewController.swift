//
//  MainNaveViewController.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/14.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class MainNaveViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let navBar = UINavigationBar.appearance()
//        navBar.barTintColor = DBGlobalRedColor()
        navBar.isTranslucent = false
        navBar.tintColor = UIColor.white
        navBar.shadowImage = UIImage()
        navBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: titleMainColor(), NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
    }
    
    /**
     * 统一所有控制器导航栏左上角的返回按钮
     * 让所有push进来的控制器，它的导航栏左上角的内容都一样
     * 能拦截所有的push操作
     - viewController : 需要压栈的控制器
     - animated :       是否动画
     */
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        //这时push进来的控制器viewController,不是第一个子控制器(不是根控制器)
        if viewControllers.count > 0 {
            //push 后隐藏 tabbar
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "checkUserType_backward_9x15_"), style: .plain, target: self, action: #selector(navigationBackClick))
        }
        super.pushViewController(viewController, animated: true)
    }
    
    //返回按钮
    @objc func navigationBackClick() {
        if UIApplication.shared.isNetworkActivityIndicatorVisible {
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
        }
        popViewController(animated: true)
    }    
}
