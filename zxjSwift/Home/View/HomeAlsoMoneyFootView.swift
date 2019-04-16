//
//  HomeAlsoMoneyFootView.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/15.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeAlsoMoneyFootView: UIView {

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
        addSubview(payBtn)
        addSubview(airPayBtn)
        payBtn.snp.makeConstraints { (make) in
            make.top.equalTo(propH(height: 38))
            make.left.equalTo(propW(width: 32))
            make.right.equalTo(propW(width: -32))
            make.height.equalTo(propH(height: 46))
        }
        airPayBtn.snp.makeConstraints { (make) in
            make.top.equalTo(payBtn.snp.bottom).offset(propH(height: 20))
            make.centerX.equalTo(self)
        }
    }
    /// 创建UI
    func createUI() {
        
    }
    /// 私用方法
    /// 公共方法
    /// 点击事件
    @objc func actionClick(sender: UIButton) {
        
    }
    
    @objc func airPayClick(sender: UIButton) {
        
    }
    
    /// 代理协议
    /// 网络请求
    /// 懒加载
    private lazy var payBtn: UIButton = {
        let payBtn = UIButton(title: "提前还款", font: UIFont.boldSystemFont(ofSize: 18), titleColor: 0xFFDD01, cornerRadius: propH(height: 23), imageName: "", frame: .zero, target:self, sle:#selector(actionClick(sender:)))
        payBtn.backgroundColor = kRGBColorFromHex(rgbValue: 0x333333)
        return payBtn
    }()
    
    private lazy var airPayBtn: UIButton = {
        let airPayBtn = UIButton(title: "支付宝扫一扫还款，最高可优惠99元", font: UIFont.systemFont(ofSize: 12), titleColor: 0x69A0FF, cornerRadius: 0, imageName: "", frame: .zero, target:self, sle:#selector(airPayClick(sender:)))
        return airPayBtn
    }()
    
    /// getset方法
    
}
