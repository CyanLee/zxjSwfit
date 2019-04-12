//
//  HomeAlsoMoneyHeaderView.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/12.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeAlsoMoneyHeaderView: UIView {

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
        addSubview(baseView)
        baseView.addSubview(timeDesc)
        baseView.addSubview(moneyLB)
        baseView.addSubview(descLB)
        
        baseView.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.bottom.equalTo(0)
            make.left.equalTo(propW(width: 15))
            make.right.equalTo(propW(width: -15))
        }
        timeDesc.snp.makeConstraints { (make) in
            make.top.equalTo(propH(height: 18))
            make.centerX.equalTo(baseView)
            make.height.equalTo(propH(height: 14))
        }
        moneyLB.snp.makeConstraints { (make) in
            make.top.equalTo(timeDesc.snp.bottom).offset(propH(height: 19))
            make.centerX.equalTo(baseView)
            make.height.equalTo(propH(height: 38))
        }
        descLB.snp.makeConstraints { (make) in
            make.top.equalTo(moneyLB.snp.bottom).offset(propH(height: 20))
            make.centerX.equalTo(baseView)
            make.height.equalTo(propH(height: 15))
        }
        
    }
    /// 私用方法
    /// 公共方法
    /// 点击事件
    /// 代理协议
    /// 网络请求
    /// 懒加载
    
    /// 背景view
    private lazy var baseView: UIView = {
        let baseView = UIView(frame: .zero, bgColor: 0xFFDD01)
        baseView.layer.masksToBounds = true
        baseView.layer.cornerRadius = 5
        return baseView
    }()
    
    /// 还款时间
    private lazy var timeDesc: UILabel = {
        let timeDesc = UILabel(title: "还款倒计时：14天23时32分", textColor: 0x777777, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        return timeDesc
    }()
    
    /// 还款金额
    private lazy var moneyLB: UILabel = {
        let moneyLB = UILabel(title: "2000.00", textColor: 0x333333, font: UIFont.boldSystemFont(ofSize: 50), frame: .zero)
        return moneyLB
    }()
    
    /// 描述
    private lazy var descLB: UILabel = {
        let descLB = UILabel(title: "近期待还金额(元)", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        descLB.textColor = UIColor(red: 119/255.0, green: 119/255.0, blue: 119/255.0, alpha: 0.5)
        return descLB
    }()
    
    /// getset方法

}
