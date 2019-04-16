//
//  HomeDataProveSectionView.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/16.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeDataProveSectionView: UIView {

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
        addSubview(lineV)
        addSubview(titleLB)
        titleLB.snp.makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.left.equalTo(propW(width: 25))
        }
        lineV.snp.makeConstraints { (make) in
            make.bottom.equalTo(titleLB.snp.bottom).offset(propH(height: -2))
            make.left.equalTo(titleLB.snp.left)
            make.right.equalTo(titleLB.snp.right)
            make.height.equalTo(propH(height: 4))
        }
    }
    /// 私用方法
    /// 公共方法
    /// 点击事件
    /// 代理协议
    /// 网络请求
    /// 懒加载
    private lazy var titleLB: UILabel = {
        let titleLB = UILabel(title: "", textColor: 0x333333, font: UIFont.boldSystemFont(ofSize: 18), frame: .zero)
        return titleLB
    }()
    
    private lazy var lineV: UIView = {
        let lineV = UIView(frame: .zero, bgColor: 0xFFDD01)
        return lineV
    }()
    
    /// getset方法
    public var index : Int? {
        didSet{
            if index == 0 {
                titleLB.text = "前置认证"
            }else if index == 1 {
                titleLB.text = "必选认证"
            }
        }
    }

    
}
