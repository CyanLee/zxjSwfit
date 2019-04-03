//
//  HomeLeadToProveBankInfoCell.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/2.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeLeadToProveBankInfoCell: UITableViewCell {

    /// 名字视图
    var nameV = UIView()
    /// 开户行视图
    var bankV = UIView()
    /// 验证码
    var codeV = UIView()
    
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
    
    
    /// 选择开户行
    @objc func takingClick() {
        
    }
    
    /// 验证码
    @objc func codeClick(sender :UIButton) {
        
    }
    
    /// 提交
    @objc func actionClick() {
        print("提交")
    }
    
    /// 底部提示
    @objc func tipClick() {
        
    }
    
    /// 创建名字视图
    func setupNameView() {
        /// 姓名
        let nameView = UIView(frame: .zero, bgColor: 0xffffff)
        let toptitleLB = UILabel(title: "银行卡信息", textColor: 0x333333, font: UIFont.boldSystemFont(ofSize: 18), frame: .zero)
        let toptitleLineV = UIView(frame: .zero, bgColor: 0xFFDD01)
        let topdescLB = UILabel(title: "姓名", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        let addressTF = UITextField()
        addressTF.placeholder = "请输入姓名"
        addressTF.textAlignment = .left
        addressTF.font = UIFont.systemFont(ofSize: 15)
        let topLineV = UIView(frame: .zero, bgColor: 0xEBEBEB)
        
        
        addSubview(nameView)
        nameView.addSubview(toptitleLineV)
        nameView.addSubview(toptitleLB)
        nameView.addSubview(topdescLB)
        nameView.addSubview(addressTF)
        nameView.addSubview(topLineV)
        
        nameView.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(propH(height: propH(height: 95)))
        }
        toptitleLB.snp.makeConstraints { (make) in
            make.top.equalTo(propH(height: 23))
            make.left.equalTo(propW(width: 35))
            make.height.equalTo(propH(height: 17))
            make.width.equalTo(propW(width: 93))
        }
        toptitleLineV.snp.makeConstraints { (make) in
            make.centerX.equalTo(toptitleLB)
            make.bottom.equalTo(toptitleLB).offset(0)
            make.width.equalTo(propW(width: 93))
            make.height.equalTo(propH(height: 4))
        }
        topdescLB.snp.makeConstraints { (make) in
            make.top.equalTo(toptitleLineV.snp.bottom).offset(propH(height: 24))
            make.left.equalTo(propW(width: 34))
            make.height.equalTo(propH(height: 14))
        }
        addressTF.snp.makeConstraints { (make) in
            make.right.equalTo(0)
            make.centerY.equalTo(topdescLB)
            make.left.equalTo(topdescLB.snp.right).offset(propW(width: 21))
        }
        topLineV.snp.makeConstraints { (make) in
            make.bottom.equalTo(0)
            make.height.equalTo(propH(height: 1))
            make.left.equalTo(propW(width: 25))
            make.right.equalTo(propW(width: -25))
        }
        
        nameV = nameView
    }
    
    /// 创建开户行
    func setupBank() {
        let baseView = UIView(frame: .zero, bgColor: 0xffffff)
        let titleLB = UILabel(title: "选择开户行", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        titleLB.textAlignment = .left
        let bankNameTF = UITextField()
        bankNameTF.placeholder = "未选择"
        bankNameTF.textAlignment = .right
        let arrowImg = UIImageView(imageName: "home_arrow", cornerRadius: 0, frame: .zero)
        let takingBtn = UIButton(title: "", font: UIFont.systemFont(ofSize: 18), titleColor: 0xffffff, cornerRadius: 0, imageName: "", frame: .zero, target: self, sle: #selector(takingClick))
        let lineView = UIView(frame: .zero, bgColor: 0xEBEBEB)
        
        addSubview(baseView)
        baseView.addSubview(titleLB)
        baseView.addSubview(bankNameTF)
        baseView.addSubview(arrowImg)
        baseView.addSubview(lineView)
        baseView.addSubview(takingBtn)
        
        baseView.snp.makeConstraints { (make) in
            make.top.equalTo(nameV.snp.bottom).offset(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(propH(height: 68))
        }
        titleLB.snp.makeConstraints { (make) in
            make.centerY.equalTo(baseView)
            make.left.equalTo(propW(width: 34))
        }
        arrowImg.snp.makeConstraints { (make) in
            make.right.equalTo(propW(width: -33))
            make.size.equalTo(CGSize(width: propW(width: 22), height: propH(height: 22)))
            make.centerY.equalTo(baseView)
        }
        bankNameTF.snp.makeConstraints { (make) in
            make.right.equalTo(arrowImg.snp.left).offset(propW(width: -5))
            make.top.equalTo(0)
            make.bottom.equalTo(0)
            make.left.equalTo(titleLB.snp.right).offset(0)
        }
        lineView.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 25))
            make.right.equalTo(propW(width: -25))
            make.height.equalTo(propH(height: 1))
            make.bottom.equalTo(0)
        }
        takingBtn.snp.makeConstraints { (make) in
            make.edges.equalTo(baseView)
        }
        bankV = baseView
    }
    
    /// 创建银行卡,手机号,验证码
    func setupMoreView() {
        let baseView = UIView(frame: .zero, bgColor: 0xffffff)
        addSubview(baseView)
        baseView.snp.makeConstraints { (make) in
            make.top.equalTo(bankV.snp.bottom).offset(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(propH(height: 68*3))
        }
        codeV = baseView
        for i in 0...2 {
            let bView = UIView(frame: .zero, bgColor: 0xffffff)
            let titleLB = UILabel(title: "", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
            let textTF = UITextField()
            textTF.font = UIFont.systemFont(ofSize: 15)
            let topLineV = UIView(frame: .zero, bgColor: 0xEBEBEB)
            
            baseView.addSubview(bView)
            bView.addSubview(titleLB)
            bView.addSubview(textTF)
            bView.addSubview(topLineV)
            
            bView.snp.makeConstraints { (make) in
                make.top.equalTo(propW(width: CGFloat(68 * i)))
                make.left.equalTo(0)
                make.right.equalTo(0)
                make.height.equalTo(propH(height: 68))
            }
            titleLB.snp.makeConstraints { (make) in
                make.centerY.equalTo(bView)
                make.width.equalTo(propW(width: 46))
                make.left.equalTo(propW(width: 34))
            }
            textTF.snp.makeConstraints { (make) in
                make.left.equalTo(titleLB.snp.right).offset(propW(width: 20))
                make.top.equalTo(0)
                make.bottom.equalTo(0)
                make.right.equalTo(propW(width: -100))
            }
            topLineV.snp.makeConstraints { (make) in
                make.left.equalTo(0)
                make.right.equalTo(0)
                make.bottom.equalTo(0)
                make.height.equalTo(1)
            }
            
            if i == 0 {
                titleLB.text = "手机号"
                textTF.placeholder = "请输入您的银行卡号"
            }else if i == 1 {
                titleLB.text = "手机号"
                textTF.placeholder = "请输入您的手机号"
            }else{
                titleLB.text = "验证码"
                textTF.placeholder = "请输入手机验证码"
                let codeBtn = UIButton(title: "发送", font: UIFont.systemFont(ofSize: 15), titleColor: 0x69A0FF, cornerRadius: 0, imageName: "", frame: .zero, target: self, sle: #selector(codeClick(sender:)))
                bView.addSubview(codeBtn)
                codeBtn.snp.makeConstraints { (make) in
                    make.right.equalTo(0)
                    make.top.equalTo(0)
                    make.bottom.equalTo(0)
                    make.left.equalTo(textTF.snp.right).offset(0)
                }
            }
        }
        
    }
    
    /// 创建按钮与提示
    func setupUIBottomView() {
        
        let tipLB = UILabel(title: "手机号是您在办理银行卡所留的手机号", textColor: 0xFF6146, font: UIFont.systemFont(ofSize: 12), frame: .zero)
        addSubview(tipLB)
        tipLB.snp.makeConstraints { (make) in
            make.top.equalTo(codeV.snp.bottom).offset(15)
            make.left.equalTo(propW(width: 34))
            make.height.equalTo(propH(height: 12))
        }
        
        let actionBtn = UIButton(title: "提交", font: UIFont.boldSystemFont(ofSize: 18), titleColor: 0xFFDD01, cornerRadius: propH(height: 23), imageName: "", frame: .zero, target: self, sle: #selector(actionClick))
        actionBtn.backgroundColor = titleMainColor()
        addSubview(actionBtn)
        actionBtn.snp.makeConstraints { (make) in
            make.top.equalTo(tipLB.snp.bottom).offset(propH(height: 20))
            make.left.equalTo(propW(width: 32))
            make.right.equalTo(propW(width: -32))
            make.height.equalTo(propH(height: 46))
        }
        
        let tipBtn = UIButton(title: "", font: UIFont.systemFont(ofSize: 13), titleColor: 0x999999, cornerRadius: 0, imageName: "", frame: .zero, target: self, sle: #selector(tipClick))
        tipBtn.set(image: UIImage(named: "home_tip_icon"), title: "知心借才去智能加密，充分保障您的信息安全", titlePosition: .right,
                   additionalSpacing: 10.0, state: .normal)
        addSubview(tipBtn)
        tipBtn.snp.makeConstraints { (make) in
            make.bottom.equalTo(propH(height: -20))
            make.centerX.equalTo(self)
        }
    }
    
    func setupUI() {
        setupNameView()
        setupBank()
        setupMoreView()
        setupUIBottomView()
    }

}
