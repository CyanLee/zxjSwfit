//
//  HomeAlsoMoneyNaviView.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/8.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeAlsoMoneyNaviView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
        createUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// 初始化
    func initialize() {
        
    }
    /// 创建UI
    func createUI() {
        addSubview(topView)
        addSubview(bottomView)
        bottomView.addSubview(titleLB)
        bottomView.addSubview(backBtn)
        bottomView.addSubview(listBtn)

        topView.snp.makeConstraints({ (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(propH(height: 20))
        })
        bottomView.snp.makeConstraints({ (make) in
            make.top.equalTo(topView.snp.bottom).offset(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        })
        backBtn.snp.makeConstraints({ (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.bottom.equalTo(0)
            make.width.equalTo(propW(width: 50))
        })
        titleLB.snp.makeConstraints({ (make) in
            make.centerY.equalTo(bottomView)
            make.centerX.equalTo(bottomView)
        })
        listBtn.snp.makeConstraints({ (make) in
            make.top.equalTo(0)
            make.right.equalTo(propW(width: -15))
            make.bottom.equalTo(0)
        })


    }
    /// 私用方法
    /// 公共方法
    /// 点击事件
    /// 返回按钮
    @objc func backClick(sender: UIButton) {
        
    }
    /// 我的账单
    @objc func listClick(sender: UIButton) {
        
    }
    /// 代理协议
    /// 网络请求
    /// 懒加载
    
    // 创建导航栏
    private lazy var topView: UIView = {
        let topView = UIView(frame: .zero, bgColor: 0x333333)
        return topView;
    }()
    
    private lazy var bottomView: UIView = {
        let bottomView = UIView(frame: .zero, bgColor: 0x333333)
        return bottomView;
    }()
    
    private lazy var titleLB: UILabel = {
        let titleLB = UILabel(title: "还款", textColor: 0xffffff, font: UIFont.boldSystemFont(ofSize: 20), frame: .zero)
        return titleLB;
    }()
    
    private lazy var backBtn: UIButton = {
        let backBtn =  UIButton(title: "", font: UIFont.systemFont(ofSize: 0), titleColor: 0x000000, cornerRadius: 0, imageName: "home_white_back", frame: .zero, target: self, sle: #selector(backClick(sender:)))
        return backBtn;
    }()
    
    private lazy var listBtn: UIButton = {
        let listBtn =  UIButton(title: "我的账单", font: UIFont.systemFont(ofSize: 15), titleColor: 0xffffff, cornerRadius: 0, imageName: "", frame: .zero, target: self, sle: #selector(listClick(sender:)))
        return listBtn;
    }()
    
    /// getset方法
}
