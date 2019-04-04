//
//  HomeApplyLoanImgCell.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/4.
//  Copyright © 2019 今日. All rights reserved.
//  申请借款 有icon的cell

import UIKit

class HomeApplyLoanImgCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
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
        addSubview(titleLB)
        addSubview(textTF)
        addSubview(iconImg)
        addSubview(lineView)
        titleLB.snp.makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.left.equalTo(propW(width: 34))
        }
        iconImg.snp.makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.right.equalTo(propW(width: -33))
            make.size.equalTo(CGSize(width: propW(width: 22), height: propH(height: 22)))
        }
        textTF.snp.makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.right.equalTo(iconImg.snp.left).offset(propW(width: -5))
        }
        lineView.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 25))
            make.right.equalTo(propW(width: -25))
            make.height.equalTo(propH(height: 1))
            make.bottom.equalTo(0)
        }
    }
    /// 私用方法
    //更新iconImg的布局,有些是需要的,有些不需要
    func updatIconFrame(ishidden: Bool) {
        iconImg.snp.updateConstraints { (make) in
            if ishidden == true {
                make.size.equalTo(CGSize(width: 0, height: 0))
            }else{
                make.size.equalTo(CGSize(width: propW(width: 22), height: propH(height: 22)))
            }
        }
    }
    //更新标题和内容
    func updateTitAndCon(index: Int) {
        switch index {
        case 0:
            titleLB.text = "借款金额"
            textTF.text = "1000元"
            break
        case 1:
            titleLB.text = "借款期限"
            textTF.text = "7天"
            break
        case 2:
            titleLB.text = "借款用途"
            textTF.placeholder = "请选择"
            break
        case 3:
            titleLB.text = "平台服务费"
            textTF.text = "250元"
            break
        case 4:
            titleLB.text = "到账金额"
            textTF.text = "750元"
            break
        case 5:
            titleLB.text = "收还款银行卡"
            textTF.placeholder = "请选择"
            break
        case 6:
            titleLB.text = "出借方"
            textTF.text = "深圳市广盛行小额贷款有限公司"
            break
        case 7:
            titleLB.text = "总计应还"
            textTF.text = "1004.67元"
            break
        case 8:
            titleLB.text = "还款日期"
            textTF.text = "2019-02-01"
            break
        default:
            break
        }
    }
    ///分割线 和 icon
    func updateLine(index: Int) {
        if index == 3 || index == 6 {
            lineView.isHidden = false
        }else{
            lineView.isHidden = true
        }
        
        if index == 7 {
            iconImg.image = UIImage(named: "home_tip")
        }else{
            iconImg.image = UIImage(named: "home_arrow")
        }
    }
    
    /// 公共方法
    /// 点击事件
    /// 代理协议
    /// 网络请求
    /// 懒加载
    
    ///标题
    private lazy var titleLB: UILabel = {
        let titleLB = UILabel(title: "借款金额", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        return titleLB
    }()
    
    ///TF
    private lazy var textTF: UITextField = {
        let textTF = UITextField()
        textTF.textColor = kRGBColorFromHex(rgbValue: 0x333333)
        textTF.font = UIFont.systemFont(ofSize: 15)
        textTF.textAlignment = .right
        return textTF
    }()
    ///icon
    private lazy var iconImg: UIImageView = {
        let iconImg = UIImageView(imageName: "home_arrow", cornerRadius: 0, frame: .zero)
        return iconImg
    }()
    ///line
    private lazy var lineView: UIView = {
        let lineView = UIView(frame: .zero, bgColor: 0xebebeb)
        lineView.isHidden = true
        return lineView
    }()
    /// getset方法
    public var index : Int? {
        didSet{
            if index == 0 || index == 2 || index == 5 || index == 7  {
                updatIconFrame(ishidden: false)
            }else{
                updatIconFrame(ishidden: true)
            }
            if let num = index  {
                updateLine(index: num)
                updateTitAndCon(index: num)
            }
        }
    }
}
