//
//  HomeAlsoMoneyPsyTypeCell.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/15.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeAlsoMoneyPsyTypeCell: UITableViewCell {

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
        /// 标题
        let titleLB = UILabel(title: "还款方式", textColor: 0x333333, font: UIFont.systemFont(ofSize: 17), frame: .zero)
        addSubview(titleLB)
        titleLB.snp.makeConstraints { (make) in
            make.top.equalTo(propH(height: 16.5))
            make.left.equalTo(propW(width: 22))
            make.height.equalTo(propH(height: 20))
        }
        for i in 0...0 {
            let baseView = UIView(frame: .zero, bgColor: 0xffffff)
            let iconImg = UIImageView(imageName: "home_bank_icon", cornerRadius: 0, frame: .zero)
            let typeName = UILabel(title: "银行卡划扣", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
            let descLB = UILabel(title: "622 **** 8022", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
            let arrowImg = UIImageView(imageName: "home_arrow", cornerRadius: 0, frame: .zero)
            let tipLB = UILabel(title: "银行卡划扣一天只能操作3次，请保证银行卡余额充足哦！", textColor: 0xcecece, font: UIFont.systemFont(ofSize: 12), frame: .zero)
            let actionBtn = UIButton(title: "", font: UIFont.systemFont(ofSize: 0), titleColor: 0xffffff, cornerRadius: 0, imageName: "", frame: .zero, target: self, sle: #selector(actionClick(sender:)))
            actionBtn.tag = i
            addSubview(baseView)
            baseView.addSubview(iconImg)
            baseView.addSubview(typeName)
            baseView.addSubview(descLB)
            baseView.addSubview(arrowImg)
            baseView.addSubview(tipLB)
            baseView.addSubview(actionBtn)
            baseView.snp.makeConstraints { (make) in
                make.top.equalTo(titleLB.snp.bottom).offset(0)
                make.left.equalTo(0)
                make.right.equalTo(0)
                make.height.equalTo(propH(height: 44))
            }
            iconImg.snp.makeConstraints { (make) in
                make.top.equalTo(propH(height: 11.25))
                make.left.equalTo(propW(width: 22))
                make.size.equalTo(CGSize(width: 22, height: 22))
            }
            typeName.snp.makeConstraints { (make) in
                make.centerY.equalTo(iconImg)
                make.left.equalTo(iconImg.snp.right).offset(propW(width: 15))
            }
            arrowImg.snp.makeConstraints { (make) in
                make.centerY.equalTo(iconImg)
                make.right.equalTo(propW(width: -23))
                make.size.equalTo(CGSize(width: 22, height: 22))
            }
            descLB.snp.makeConstraints { (make) in
                make.centerY.equalTo(iconImg)
                make.right.equalTo(arrowImg.snp.left).offset(propW(width: -5))
            }
            tipLB.snp.makeConstraints { (make) in
                make.bottom.equalTo(propH(height: 21))
                make.left.equalTo(propW(width: 22))
                make.height.equalTo(propH(height: 12))
            }
            actionBtn.snp.makeConstraints { (make) in
                make.edges.equalTo(baseView)
            }
            
        }
    }
    /// 私用方法
    /// 公共方法
    /// 点击事件
    @objc func actionClick(sender: UIButton){
        
    }
    /// 代理协议
    /// 网络请求
    /// 懒加载
    
    /// 标题
//    private lazy var titleLB: UILabel = {
//        let titleLB = UILabel(title: "还款方式", textColor: 0x333333, font: UIFont.systemFont(ofSize: 17), frame: .zero)
//        return titleLB
//    }()
    
    
    
    /// getset方法
    override var frame:CGRect{
        didSet {
            var newFrame = frame
            newFrame.origin.x = 15
            newFrame.size.width = CGFloat(SW - propW(width: 30))
            super.frame = newFrame
        }
    }
}
