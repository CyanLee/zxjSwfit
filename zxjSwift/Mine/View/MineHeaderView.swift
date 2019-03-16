//
//  MineHeaderView.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/15.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class MineHeaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(miniIconImgV)
        addSubview(titleLB)
        addSubview(setupBtn)
        addSubview(realName)
        addSubview(realNameStateView)
        realNameStateView.addSubview(realNameStateLB)
        addSubview(descLB)
        addSubview(serviceLB)
        miniIconImgV.snp.makeConstraints { (make) in
            make.top.equalTo(propH(height: 35))
            make.left.equalTo(propW(width: 23))
            make.size.equalTo(CGSize(width: propW(width: 20), height: propH(height: 20)))
        }
        titleLB.snp.makeConstraints { (make) in
            make.left.equalTo(miniIconImgV.snp.right).offset(propW(width: 10))
            make.centerY.equalTo(miniIconImgV)
        }
        setupBtn.snp.makeConstraints { (make) in
            make.right.equalTo(propW(width: -23))
            make.centerY.equalTo(miniIconImgV)
            make.size.equalTo((CGSize(width: propW(width: 20), height: propH(height: 22))))
        }
        realName.snp.makeConstraints { (make) in
            make.top.equalTo(miniIconImgV).offset(propH(height: 54))
            make.height.equalTo(propH(height: 22))
            make.left.equalTo(propW(width: 23))
        }
        realNameStateView.snp.makeConstraints { (make) in
            make.left.equalTo(realName.snp.right).offset(propW(width: 12))
            make.centerY.equalTo(realName)
            make.size.equalTo(CGSize(width: propW(width: 50), height: propH(height: 20)))
        }
        realNameStateLB.snp.makeConstraints { (make) in
            make.edges.equalTo(realNameStateView)
        }
        descLB.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 23))
            make.top.equalTo(realName.snp.bottom).offset(propH(height: 17))
        }
        serviceLB.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 23))
            make.top.equalTo(descLB.snp.bottom).offset(propH(height: 48))
        }
    }
    
    
    /// 设置
    @objc func setupClick() {
        
    }
    
    /// 迷你icon
    private lazy var miniIconImgV: UIImageView = {
        let miniIconImgV = UIImageView()
        miniIconImgV.image = UIImage(named: "mine_mini_icon")
        return miniIconImgV
    }()
    
    
    /// 标题
    private lazy var titleLB: UILabel = {
        let titleLB = UILabel()
        titleLB.text = "爱借钱丶愿与你结缘"
        titleLB.font = UIFont.boldSystemFont(ofSize: 20)
        titleLB.textColor = kRGBColorFromHex(rgbValue: 0x333333)
        return titleLB
    }()
    
    
    /// 设置按钮
    private lazy var setupBtn: UIButton = {
        let setupBtn = UIButton(type: .custom)
        setupBtn.setImage(UIImage(named: "mine_setup"), for: .normal)
        setupBtn.addTarget(setupBtn, action: #selector(setupClick), for: .touchUpInside)
        return setupBtn
    }()
    
    
    /// 实名
    private lazy var realName: UILabel = {
        let realName = UILabel()
        realName.text = "136****8843"
        realName.textColor = kRGBColorFromHex(rgbValue: 0x333333)
        realName.font = UIFont.boldSystemFont(ofSize: 30)
        return realName
    }()

    
    /// 实名认证状态
    private lazy var realNameStateView: UIView = {
        let realNameStateView = UIView()
        realNameStateView.backgroundColor = kRGBColorFromHex(rgbValue: 0xFEDC00)
        realNameStateView.layer.masksToBounds = true
        realNameStateView.layer.cornerRadius = propH(height: 5)
        return realNameStateView
    }()
    
    
    /// 实名认证状态文字
    private lazy var realNameStateLB: UILabel = {
        let realNameStateLB = UILabel()
        realNameStateLB.text = "未实名"
        realNameStateLB.textColor = kRGBColorFromHex(rgbValue: 0x333333)
        realNameStateLB.font = UIFont.systemFont(ofSize: 12)
        realNameStateLB.textAlignment = .center
        return realNameStateLB
    }()
    
    
    /// 描述
    private lazy var descLB: UILabel = {
        let descLB = UILabel()
        descLB.text = "实名认证是借款的必要条件哦"
        descLB.textColor = kRGBColorFromHex(rgbValue: 0xCECECE)
        descLB.font = UIFont.systemFont(ofSize: 15)
        return descLB
    }()
    
    /// 服务
    private lazy var serviceLB: UILabel = {
        let serviceLB = UILabel()
        serviceLB.text = "服务"
        serviceLB.textColor = kRGBColorFromHex(rgbValue: 0x333333)
        serviceLB.font = UIFont.boldSystemFont(ofSize: 18)
        return serviceLB
    }()
    
    
}
