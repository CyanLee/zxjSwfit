//
//  HomeActivationCell.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/17.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeActivationCell: UITableViewCell,UITextFieldDelegate {

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
        addSubview(backBtn)
        addSubview(titleView)
        addSubview(titleLB)
        addSubview(baseView_1)
        baseView_1.addSubview(instructionsLB_1)
        baseView_1.addSubview(emailTF)
        baseView_1.addSubview(baseViewLine_1)
        addSubview(baseView_2)
        baseView_2.addSubview(instructionsLB_2)
        baseView_2.addSubview(codeTF)
        baseView_2.addSubview(codeLineView)
        baseView_2.addSubview(codeBtn)
        baseView_2.addSubview(baseViewLine_2)
        backBtn.snp.makeConstraints { (make) in
            make.top.equalTo(propH(height: 31))
            make.left.equalTo(propW(width: 10))
            make.size.equalTo(CGSize(width: propW(width: 22), height: propH(height: 22)))
        }
        titleView.snp.makeConstraints { (make) in
            make.top.equalTo(backBtn.snp.bottom).offset(propH(height: 45))
            make.left.equalTo(propW(width: 25))
            make.size.equalTo(CGSize(width: propW(width: 117), height: propH(height: 4)))
        }
        titleLB.snp.makeConstraints { (make) in
            make.top.equalTo(backBtn.snp.bottom).offset(propH(height: 21))
            make.left.equalTo(propW(width: propW(width: 24)))
            make.height.equalTo(propH(height: 29))
        }
        baseView_1.snp.makeConstraints { (make) in
            make.top.equalTo(titleView.snp.bottom).offset(propH(height: 19))
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(propH(height: 68))
        }
        instructionsLB_1.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 35))
            make.centerY.equalTo(baseView_1)
        }
        emailTF.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 99))
            make.top.equalTo(0)
            make.bottom.equalTo(0)
            make.right.equalTo(0)
        }
        baseViewLine_1.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 25))
            make.right.equalTo(propW(width: -25))
            make.bottom.equalTo(0)
            make.height.equalTo(propH(height: 1))
        }
        baseView_2.snp.makeConstraints { (make) in
            make.top.equalTo(baseView_1.snp.bottom).offset(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(propH(height: 68))
        }
        instructionsLB_2.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 35))
            make.centerY.equalTo(baseView_2)
        }
        codeBtn.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.bottom.equalTo(0)
            make.right.equalTo(propW(width: -25))
            make.width.equalTo(propW(width: 117))
        }
        codeLineView.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize(width: propW(width: 1), height: propH(height: 25)))
            make.right.equalTo(codeBtn.snp.left).offset(0)
            make.centerY.equalTo(baseView_2)
        }
        codeTF.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 99))
            make.top.equalTo(0)
            make.bottom.equalTo(0)
            make.right.equalTo(codeLineView.snp.left).offset(0)
        }
        baseViewLine_2.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 25))
            make.right.equalTo(propW(width: -25))
            make.bottom.equalTo(0)
            make.height.equalTo(propH(height: 1))
        }
        
    }
    
    //关闭
    @objc func backClick() {
        
    }
    
    /// 验证码
    @objc func codeClick() {
        
    }
    
    
    /// 返回
    private lazy var backBtn: UIButton = {
        let backBtn = UIButton(title: "", font: UIFont.systemFont(ofSize: 15), titleColor: 0x000000, cornerRadius: 0, imageName: "home_back_black", frame: .zero, target: self, sle: #selector(backClick))
        return backBtn
    }()
    
    
    /// 激活账户
    private lazy var titleLB: UILabel = {
        let titleLB = UILabel(title: "激活账户", textColor: 0x222222, font: UIFont.boldSystemFont(ofSize: 30), frame: .zero)
        return titleLB
    }()
    
    
    /// 激活账户底边
    private lazy var titleView: UIView = {
        let titleView = UIView(frame: .zero, bgColor: 0xffdd01)
        return titleView
    }()
    
    
    /// 第一个视图
    private lazy var baseView_1: UIView = {
        let baseView_1 = UIView(frame: .zero, bgColor: 0xffffff)
        return baseView_1
    }()
    
    
    /// 邮箱
    private lazy var instructionsLB_1: UILabel = {
        let instructionsLB_1 = UILabel(title: "邮箱", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        return instructionsLB_1
    }()
    
    
    /// 邮箱TF
    private lazy var emailTF: UITextField = {
        let emailTF = UITextField()
        emailTF.delegate = self
        emailTF.placeholder = "请输入您的常用邮箱"
        return emailTF
    }()
    
    
    /// 邮箱线
    private lazy var baseViewLine_1: UIView = {
        let baseViewLine_1 = UIView(frame: .zero, bgColor: 0xEBEBEB)
        return baseViewLine_1
    }()
    
    
    /// 第二个视图
    private lazy var baseView_2: UIView = {
        let baseView_2 = UIView(frame: .zero, bgColor: 0xffffff)
        return baseView_2
    }()
    
    
    /// 验证码
    private lazy var instructionsLB_2: UILabel = {
        let instructionsLB_2 = UILabel(title: "验证码", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        return instructionsLB_2
    }()
    
    
    /// 验证码TF
    private lazy var codeTF: UITextField = {
        let codeTF = UITextField()
        codeTF.delegate = self
        codeTF.placeholder = "请输入邮箱验证码"
        return codeTF
    }()
    
    
    /// 验证码line
    private lazy var codeLineView: UIView = {
        let codeLineView = UIView(frame: .zero, bgColor: 0xEBEBEB)
        return codeLineView
    }()
    
    
    /// 验证码
    private lazy var codeBtn: UIButton = {
        let codeBtn = UIButton(title: "获取验证码", font: UIFont.systemFont(ofSize: 15), titleColor: 0x69a0ff, cornerRadius: 0, imageName: "", frame: .zero, target: self, sle: #selector(codeClick))
        return codeBtn
    }()
    
    
    /// 验证码线
    private lazy var baseViewLine_2: UIView = {
        let baseViewLine_2 = UIView(frame: .zero, bgColor: 0xEBEBEB)
        return baseViewLine_2
    }()
    
}
