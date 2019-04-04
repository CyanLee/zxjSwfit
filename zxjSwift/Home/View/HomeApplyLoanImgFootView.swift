//
//  HomeApplyLoanImgFootView.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/4.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeApplyLoanImgFootView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
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
        addSubview(actionBtn)
        addSubview(tipLB)
        actionBtn.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(propW(width: 31))
            make.right.equalTo(propW(width: -31))
            make.height.equalTo(propH(height: 46))
            make.centerX.equalTo(self)
        }
        tipLB.snp.makeConstraints { (make) in
            make.top.equalTo(actionBtn.snp.bottom).offset(propH(height: 16))
            make.centerX.equalTo(self)
        }
    }
    /// 私用方法
    /// 公共方法
    /// 点击事件
    @objc func actionClick(sender: UIButton) {
        
    }
    /// 代理协议
    /// 网络请求
    /// 懒加载
    private lazy var actionBtn: UIButton = {
        let actionBtn = UIButton(title: "确定借款", font: UIFont.boldSystemFont(ofSize: 18), titleColor: 0xFFDD01, cornerRadius: propH(height: 23), imageName: "", frame: .zero, target: self, sle: #selector(actionClick(sender:)))
        actionBtn.backgroundColor = kRGBColorFromHex(rgbValue: 0x333333)
        return actionBtn
    }()
    private lazy var tipLB: UILabel = {
        let tipLB = UILabel(title: "点击确认代表您同意《借款须知》《服务合同》", textColor: 0x777777, font: UIFont.systemFont(ofSize: 12), frame: .zero)
        return tipLB
    }()
    
    /// getset方法

}
