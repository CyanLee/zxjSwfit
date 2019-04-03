//
//  HomeLeadToProveContactCell.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/3/28.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeLeadToProveContactCell: UITableViewCell {

    /// 常住地址
    var addressView = UIView()
    
    /// 紧急联系人2
    var contactView = UIView()
    
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
    
    /// 提交
    @objc func actionClick() {
        print("提交")
    }
    
    /// 底部提示
    @objc func tipClick() {
        
    }
    
    /// 选择区域
    @objc func addressClick() {
        print("选择区域")
    }
    
    /// 选择关系
    @objc func contactClick_1(sender: UIButton) {
        print("选择关系_1")
    }
    
    /// 选择关系
    @objc func contactClick_2(sender: UIButton) {
        print("选择关系_2")
    }
    
    
    func setupUI() {
        setupAddressView()
        setupContact()
        setupUIBottomView()
    }
    
    
    /// 常住地址
    func setupAddressView() {
        let baseView = UIView(frame: .zero, bgColor: 0xffffff)
        let topView = UIView(frame: .zero, bgColor: 0xffffff)
        let topBtn = UIButton(type: .custom)
        topBtn.addTarget(self, action: #selector(addressClick), for: .touchUpInside)
        let bottomView = UIView(frame: .zero, bgColor: 0xffffff)
        let toptitleLB = UILabel(title: "常住地址", textColor: 0x333333, font: UIFont.boldSystemFont(ofSize: 18), frame: .zero)
        let toptitleLineV = UIView(frame: .zero, bgColor: 0xFFDD01)
        let topdescLB = UILabel(title: "所属区域", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        let addressTF = UITextField()
        addressTF.placeholder = "省/市/区"
        addressTF.textAlignment = .right
        addressTF.font = UIFont.systemFont(ofSize: 15)
        let topLineV = UIView(frame: .zero, bgColor: 0xEBEBEB)
        let arrowImgV = UIImageView(imageName: "home_arrow", cornerRadius: 0, frame: .zero)
        let bottomdescLB = UILabel(title: "详细地址", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        let regionTF = UITextField()
        regionTF.placeholder = "详细街道和门牌号"
        regionTF.textAlignment = .right
        regionTF.font = UIFont.systemFont(ofSize: 15)
        let bottomLineV = UIView(frame: .zero, bgColor: 0xEBEBEB)
        
        addSubview(baseView)
        baseView.addSubview(topView)
        baseView.addSubview(bottomView)
        topView.addSubview(toptitleLineV)
        topView.addSubview(toptitleLB)
        topView.addSubview(topdescLB)
        topView.addSubview(addressTF)
        topView.addSubview(arrowImgV)
        topView.addSubview(topLineV)
        topView.addSubview(topBtn)
        bottomView.addSubview(bottomdescLB)
        bottomView.addSubview(regionTF)
        bottomView.addSubview(bottomLineV)
        
        baseView.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(propH(height: propH(height: 190)))
        }
        topView.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(propH(height: propH(height: 95)))
        }
        bottomView.snp.makeConstraints { (make) in
            make.bottom.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(propH(height: propH(height: 95)))
        }
        toptitleLB.snp.makeConstraints { (make) in
            make.top.equalTo(propH(height: 23))
            make.left.equalTo(propW(width: 35))
            make.height.equalTo(propH(height: 17))
            make.width.equalTo(propW(width: 75))
        }
        toptitleLineV.snp.makeConstraints { (make) in
            make.centerX.equalTo(toptitleLB)
            make.bottom.equalTo(toptitleLB).offset(0)
            make.width.equalTo(propW(width: 69))
            make.height.equalTo(propH(height: 4))
        }
        topdescLB.snp.makeConstraints { (make) in
            make.top.equalTo(toptitleLineV.snp.bottom).offset(propH(height: 24))
            make.left.equalTo(propW(width: 34))
            make.height.equalTo(propH(height: 14))
        }
        arrowImgV.snp.makeConstraints { (make) in
            make.right.equalTo(propW(width: -33))
            make.size.equalTo(CGSize(width: propW(width: 22), height: propH(height: 22)))
            make.centerY.equalTo(topdescLB)
        }
        addressTF.snp.makeConstraints { (make) in
            make.right.equalTo(arrowImgV.snp.left).offset(propW(width: 0))
            make.centerY.equalTo(topdescLB)
            make.left.equalTo(toptitleLB.snp.right).offset(0)
        }
        topLineV.snp.makeConstraints { (make) in
            make.bottom.equalTo(0)
            make.height.equalTo(propH(height: 1))
            make.left.equalTo(propW(width: 25))
            make.right.equalTo(propW(width: -25))
        }
        topBtn.snp.makeConstraints { (make) in
            make.edges.equalTo(topView)
        }
        bottomdescLB.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: propW(width: 34)))
            make.centerY.equalTo(bottomView)
        }
        regionTF.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.right.equalTo(propW(width: -40))
            make.bottom.equalTo(0)
            make.left.equalTo(propW(width: 50))
        }
        bottomLineV.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 25))
            make.right.equalTo(propW(width: -25))
            make.bottom.equalTo(0)
            make.height.equalTo(propH(height: 1))
        }
        addressView = baseView
    }

    
    /// 联系人
    func setupContact() {
        for i in 0...1 {
            let baseView = UIView(frame: .zero, bgColor: 0xffffff)
            let topView = UIView(frame: .zero, bgColor: 0xffffff)
            let middleView = UIView(frame: .zero, bgColor: 0xffffff)
            let bottomView = UIView(frame: .zero, bgColor: 0xffffff)
            let toptitleLB = UILabel(title: "紧急联系人1", textColor: 0x333333, font: UIFont.boldSystemFont(ofSize: 18), frame: .zero)
            let toptitleLineV = UIView(frame: .zero, bgColor: 0xFFDD01)
            let topdescLB = UILabel(title: "联系人姓名", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
            let nameTF = UITextField()
            nameTF.placeholder = "未选择"
            nameTF.textAlignment = .right
            nameTF.font = UIFont.systemFont(ofSize: 15)
            let arrowImgV = UIImageView(imageName: "home_arrow", cornerRadius: 0, frame: .zero)
            let topLineV = UIView(frame: .zero, bgColor: 0xEBEBEB)
            let topBtn = UIButton(type: .custom)
            topBtn.tag = i
            topBtn.addTarget(self, action: #selector(contactClick_1(sender:)), for: .touchUpInside)
            
            let middledescLB = UILabel(title: "联系人手机号", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
            let middlephoneTF = UITextField()
            middlephoneTF.placeholder = ""
            middlephoneTF.textAlignment = .right
            middlephoneTF.font = UIFont.systemFont(ofSize: 15)
            let middleLineV = UIView(frame: .zero, bgColor: 0xEBEBEB)
            
            let bottomdescLB = UILabel(title: "与联系人关系", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
            let betweenTF = UITextField()
            betweenTF.placeholder = "未选择"
            betweenTF.textAlignment = .right
            betweenTF.font = UIFont.systemFont(ofSize: 15)
            let bottomLineV = UIView(frame: .zero, bgColor: 0xEBEBEB)
            let bottomBtn = UIButton(type: .custom)
            bottomBtn.tag = i
            bottomBtn.addTarget(self, action: #selector(contactClick_2(sender:)), for: .touchUpInside)
            
            addSubview(baseView)
            baseView.addSubview(topView)
            baseView.addSubview(middleView)
            baseView.addSubview(bottomView)
            
            topView.addSubview(toptitleLineV)
            topView.addSubview(toptitleLB)
            topView.addSubview(topdescLB)
            topView.addSubview(nameTF)
            topView.addSubview(arrowImgV)
            topView.addSubview(topLineV)
            topView.addSubview(topBtn)
            
            middleView.addSubview(middledescLB)
            middleView.addSubview(middlephoneTF)
            middleView.addSubview(middleLineV)
            
            bottomView.addSubview(bottomdescLB)
            bottomView.addSubview(betweenTF)
            bottomView.addSubview(bottomLineV)
            bottomView.addSubview(bottomBtn)
            
            baseView.snp.makeConstraints { (make) in
                make.top.equalTo(addressView.snp.bottom).offset(i * 241)
                make.left.equalTo(0)
                make.right.equalTo(0)
                make.height.equalTo(propH(height: propH(height: 241)))
            }
            
            topView.snp.makeConstraints { (make) in
                make.top.equalTo(0)
                make.left.equalTo(0)
                make.right.equalTo(0)
                make.height.equalTo(propH(height: propH(height: 95)))
            }
            middleView.snp.makeConstraints { (make) in
                make.top.equalTo(topView.snp.bottom).offset(0)
                make.left.equalTo(0)
                make.right.equalTo(0)
                make.height.equalTo(propH(height: propH(height: 73)))
            }
            bottomView.snp.makeConstraints { (make) in
                make.top.equalTo(middleView.snp.bottom).offset(0)
                make.left.equalTo(0)
                make.right.equalTo(0)
                make.height.equalTo(propH(height: propH(height: 73)))
            }
            
            toptitleLB.snp.makeConstraints { (make) in
                make.top.equalTo(propH(height: 23))
                make.left.equalTo(propW(width: 35))
                make.height.equalTo(propH(height: 17))
                make.width.equalTo(propW(width: 105))
            }
            toptitleLineV.snp.makeConstraints { (make) in
                make.centerX.equalTo(toptitleLB)
                make.bottom.equalTo(toptitleLB).offset(0)
                make.width.equalTo(propW(width: 100))
                make.height.equalTo(propH(height: 4))
            }
            topdescLB.snp.makeConstraints { (make) in
                make.top.equalTo(toptitleLineV.snp.bottom).offset(propH(height: 24))
                make.left.equalTo(propW(width: 34))
                make.height.equalTo(propH(height: 14))
            }
            arrowImgV.snp.makeConstraints { (make) in
                make.right.equalTo(propW(width: -33))
                make.size.equalTo(CGSize(width: propW(width: 22), height: propH(height: 22)))
                make.centerY.equalTo(topdescLB)
            }
            nameTF.snp.makeConstraints { (make) in
                make.right.equalTo(arrowImgV.snp.left).offset(propW(width: 0))
                make.centerY.equalTo(topdescLB)
                make.left.equalTo(toptitleLB.snp.right).offset(0)
            }
            topLineV.snp.makeConstraints { (make) in
                make.bottom.equalTo(0)
                make.height.equalTo(propH(height: 1))
                make.left.equalTo(propW(width: 25))
                make.right.equalTo(propW(width: -25))
            }
            topBtn.snp.makeConstraints { (make) in
                make.edges.equalTo(topView)
            }
            middledescLB.snp.makeConstraints { (make) in
                make.left.equalTo(propW(width: propW(width: 34)))
                make.centerY.equalTo(middleView)
            }
            middlephoneTF.snp.makeConstraints { (make) in
                make.top.equalTo(0)
                make.right.equalTo(propW(width: -40))
                make.bottom.equalTo(0)
                make.left.equalTo(propW(width: 50))
            }
            middleLineV.snp.makeConstraints { (make) in
                make.left.equalTo(propW(width: 25))
                make.right.equalTo(propW(width: -25))
                make.bottom.equalTo(0)
                make.height.equalTo(propH(height: 1))
            }
            
            bottomdescLB.snp.makeConstraints { (make) in
                make.left.equalTo(propW(width: propW(width: 34)))
                make.centerY.equalTo(bottomView)
            }
            betweenTF.snp.makeConstraints { (make) in
                make.top.equalTo(0)
                make.right.equalTo(propW(width: -40))
                make.bottom.equalTo(0)
                make.left.equalTo(propW(width: 50))
            }
            bottomLineV.snp.makeConstraints { (make) in
                make.left.equalTo(propW(width: 25))
                make.right.equalTo(propW(width: -25))
                make.bottom.equalTo(0)
                make.height.equalTo(propH(height: 1))
            }
            bottomBtn.snp.makeConstraints { (make) in
                make.edges.equalTo(bottomView)
            }
            
            if i == 0 {
                toptitleLB.text = "紧急联系人1"
            }else{
                toptitleLB.text = "紧急联系人2"
                contactView = baseView
            }
        }
    }
    
    /// 创建按钮与提示
    func setupUIBottomView() {
        let actionBtn = UIButton(title: "提交", font: UIFont.boldSystemFont(ofSize: 18), titleColor: 0xFFDD01, cornerRadius: propH(height: 23), imageName: "", frame: .zero, target: self, sle: #selector(actionClick))
        actionBtn.backgroundColor = titleMainColor()
        addSubview(actionBtn)
        actionBtn.snp.makeConstraints { (make) in
            make.top.equalTo(contactView.snp.bottom).offset(propH(height: 20))
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
    
}

