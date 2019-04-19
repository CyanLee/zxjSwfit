//
//  HomeBorrowListCell.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/17.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeBorrowListCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        initialize()
        createUI()
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

    /// 初始化
    func initialize() {
        
    }
    /// 创建UI
    func createUI() {
        addSubview(navView)
        addSubview(middleV)
        addSubview(bottomV)
        navView.addSubview(titleLB)
        middleV.addSubview(moneyLB)
        middleV.addSubview(limitLB)
        middleV.addSubview(alsoTimeLB)
        middleV.addSubview(orderLB)
        middleV.addSubview(contractBtn)
        bottomV.addSubview(timeLB)
        navView.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(propH(height: 44))
        }
        middleV.snp.makeConstraints { (make) in
            make.top.equalTo(navView.snp.bottom).offset(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(propH(height: 119))
        }
        bottomV.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            make.height.equalTo(propH(height: 49))
        }
        titleLB.snp.makeConstraints { (make) in
            make.centerY.equalTo(navView)
            make.centerX.equalTo(navView)
        }
        moneyLB.snp.makeConstraints { (make) in
            make.top.equalTo(propH(height: 20))
            make.left.equalTo(propW(width: 15))
            make.height.equalTo(propH(height: 14))
        }
        limitLB.snp.makeConstraints { (make) in
            make.centerY.equalTo(moneyLB)
            make.right.equalTo(propW(width: -15))
            make.height.equalTo(propH(height: 14))
        }
        alsoTimeLB.snp.makeConstraints { (make) in
            make.top.equalTo(moneyLB.snp.bottom).offset(propH(height: 20))
            make.left.equalTo(propW(width: 15))
            make.height.equalTo(propH(height: 14))
        }
        orderLB.snp.makeConstraints { (make) in
            make.top.equalTo(alsoTimeLB.snp.bottom).offset(propH(height: 20))
            make.left.equalTo(propW(width: 15))
            make.height.equalTo(propH(height: 12))
        }
        contractBtn.snp.makeConstraints { (make) in
            make.centerY.equalTo(orderLB)
            make.right.equalTo(propW(width: -15))
            make.height.equalTo(propH(height: 14))
        }
        timeLB.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 15))
            make.centerY.equalTo(bottomV)
        }
        
    }
    /// 私用方法
    /// 公共方法
    /// 点击事件
    /// 合同
    @objc func contractClick(sender: UIButton) {
        
    }
    /// 代理协议
    /// 网络请求
    /// 懒加载
    
    /// 上视图
    private lazy var navView: UIView = {
        let navView = UIView(frame: .zero, bgColor: 0x333333)
        return navView
    }()
    
    /// 中视图
    private lazy var middleV: UIView = {
        let middleV = UIView()
        return middleV
    }()
    
    /// 下视图
    private lazy var bottomV: UIView = {
        let bottomV = UIView()
        return bottomV
    }()
    
    /// 标题
    private lazy var titleLB: UILabel = {
        let titleLB = UILabel(title: "审核中", textColor: 0xFFDD01, font: UIFont.boldSystemFont(ofSize: 18), frame: .zero)
        return titleLB
    }()
    
    /// 借款金额
    private lazy var moneyLB: UILabel = {
        let moneyLB = UILabel(title: "借款金额:￥1000", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        return moneyLB
    }()
    
    /// 借款期限
    private lazy var limitLB: UILabel = {
        let limitLB = UILabel(title: "借款期限:15天", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        return limitLB
    }()
    
    /// 还款时间
    private lazy var alsoTimeLB: UILabel = {
        let alsoTimeLB = UILabel(title: "还款日期:2017-07-23", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        return alsoTimeLB
    }()
    
    /// 订单时间
    private lazy var orderLB: UILabel = {
        let orderLB = UILabel(title: "订单编号：2848487451287425767", textColor: 0x777777, font: UIFont.systemFont(ofSize: 12), frame: .zero)
        return orderLB
    }()
    
    /// 合同按钮
    private lazy var contractBtn: UIButton = {
        let contractBtn = UIButton(title: "借款合同", font: UIFont.systemFont(ofSize: 15), titleColor: 0x69A0FF, cornerRadius: 0, imageName: "", frame: .zero, target: self, sle: #selector(contractClick(sender:)))
        return contractBtn
    }()
    
    /// 日期
    private lazy var timeLB: UILabel = {
        let timeLB = UILabel(title: "2017-07-08 15:36", textColor: 0xCECECE, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        return timeLB
    }()
    
    
    
    /// getset方法
    override var frame:CGRect{
        didSet {
            var newFrame = frame
            newFrame.origin.x = propW(width: 15)
            newFrame.size.width = CGFloat(SW - propW(width: 30))
            super.frame = newFrame
        }
    }
}
