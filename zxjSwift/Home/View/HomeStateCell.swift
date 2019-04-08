//
//  HomeStateCell.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/15.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit
import SnapKit

class HomeStateCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupUI() {
        addSubview(topTitleLB)
        addSubview(moneyLB)
        addSubview(middleTitleLB)
        addSubview(actionBtn)
        addSubview(bottomTitleLB)
        topTitleLB.snp.makeConstraints { (make) in
            make.top.equalTo(propH(height: 38))
            make.height.equalTo(propH(height: 15))
            make.centerX.equalTo(self)
        }
        moneyLB.snp.makeConstraints { (make) in
            make.top.equalTo(topTitleLB.snp.bottom).offset(propH(height: 20))
            make.height.equalTo(propH(height: 30))
            make.centerX.equalTo(self)
        }
        middleTitleLB.snp.makeConstraints { (make) in
            make.top.equalTo(moneyLB.snp.bottom).offset(propH(height: 20))
            make.height.equalTo(propH(height: 15))
            make.centerX.equalTo(self)
        }
        actionBtn.snp.makeConstraints { (make) in
            make.top.equalTo(middleTitleLB.snp.bottom).offset(propH(height: 30))
            make.centerX.equalTo(self)
            make.size.equalTo(CGSize(width: propW(width: 309), height: propH(height: 46)))
        }
        bottomTitleLB.snp.makeConstraints { (make) in
            make.top.equalTo(actionBtn.snp.bottom).offset(propH(height: 20))
            make.height.equalTo(propH(height: 15))
            make.centerX.equalTo(self)
        }
        
    }
    
    
    /// 点击事件
    @objc func actionClick() {
        if #available(iOS 11.0, *) {
//            self.viewController()?.navigationController?.pushViewController(HomeActivationViewController(), animated: true)
            self.viewController()?.navigationController?.pushViewController(HomeAlsoMoneyViewController(), animated: true)
        } else {
            // Fallback on earlier versions
        }
    }
    
    /// 最高可借(元)
    private lazy var topTitleLB: UILabel = {
        let topTitleLB = UILabel()
        topTitleLB.text = "最高可借(元)"
        topTitleLB.textColor = kRGBColorFromHex(rgbValue: 0x333333)
        topTitleLB.font = UIFont.systemFont(ofSize: 15)
        return topTitleLB
    }()
    
    
    /// 金额
    private lazy var moneyLB: UILabel = {
        let moneyLB = UILabel()
        moneyLB.text = "50000"
        moneyLB.textColor = kRGBColorFromHex(rgbValue: 0x333333)
        moneyLB.font = UIFont.boldSystemFont(ofSize: 40)
        return moneyLB
    }()
    
    
    /// 借款期限：7天
    private lazy var middleTitleLB: UILabel = {
        let middleTitleLB = UILabel()
        middleTitleLB.text = "借款期限：7天"
        middleTitleLB.textColor = kRGBColorFromHex(rgbValue: 0x333333)
        middleTitleLB.font = UIFont.systemFont(ofSize: 15)
        return middleTitleLB
    }()
    
    
    /// 点击按钮
    private lazy var actionBtn: UIButton = {
        let actionBtn = UIButton(type: .custom)
        actionBtn.backgroundColor = kRGBColorFromHex(rgbValue: 0x333333)
        actionBtn.setTitle("激活账户", for: .normal)
        actionBtn.setTitleColor(kRGBColorFromHex(rgbValue: 0xFFDD01), for: .normal)
        actionBtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        actionBtn.layer.masksToBounds = true
        actionBtn.layer.cornerRadius = propH(height: 23)
        actionBtn.addTarget(self, action: #selector(actionClick), for: .touchUpInside)
        return actionBtn
    }()
    
    
    /// 借3000元，每日利息仅2.6元
    private lazy var bottomTitleLB: UILabel = {
        let bottomTitleLB = UILabel()
        bottomTitleLB.text = "借3000元，每日利息仅2.6元"
        bottomTitleLB.textColor = kRGBColorFromHex(rgbValue: 0x333333)
        bottomTitleLB.font = UIFont.systemFont(ofSize: 15)
        return bottomTitleLB
    }()

}
