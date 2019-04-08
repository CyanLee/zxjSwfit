//
//  HomeAlsoMoneyViewController.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/8.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeAlsoMoneyViewController: BaseViewControlle {

    /// 修改状态栏的背景色
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        createUI()
        // Do any additional setup after loading the view.
    }
    
    /// 初始化
    func initialize() {
        
    }
    /// 创建UI
    func createUI() {
        view.addSubview(bgView)
        view.addSubview(naviView)
        bgView.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(knaviH() + propH(height: 118))
        }
        naviView.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(knaviH())
        }
        
    }
    /// 私用方法
    /// 公共方法
    /// 点击事件
    /// 代理协议
    /// 网络请求
    /// 懒加载
    
    /// 创建背景
    private lazy var bgView: UIView = {
        let bgView = UIView(frame: .zero, bgColor: 0x333333)
        return bgView
    }()
    
    /// 创建导航栏
    private lazy var naviView: HomeAlsoMoneyNaviView = {
        let naviView = HomeAlsoMoneyNaviView()
        return naviView;
    }()
    
    /// getset方法

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
