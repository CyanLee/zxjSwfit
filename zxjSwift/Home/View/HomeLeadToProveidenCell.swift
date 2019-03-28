//
//  HomeLeadToProveidenCell.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/3/27.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeLeadToProveidenCell: UITableViewCell {
    
    /// 身份证反面的view
    var lastIDView = UIView()
    
    /// 有效期的TF
    var lastTFView = UIView()
    
    var selIDView = UILabel()
    
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
        
    }
    
    
    /// 拍照
    @objc func takingClick() {
        
    }
    
    
    /// 底部提示
    @objc func tipClick() {
        
    }
    
    func setupUI() {
        for i in 0...1 {
            let baseView = UIView(frame: .zero, bgColor: 0xffffff)
            baseView.layer.masksToBounds = true
            baseView.layer.borderWidth = propW(width: 1)
            baseView.layer.borderColor = kRGBColorFromHex(rgbValue: 0xEBEBEB).cgColor
            let imgView = UIImageView(imageName: "", cornerRadius: 0, frame: .zero)
            let titleLB = UILabel(title: "", textColor: 0x333333, font: UIFont.boldSystemFont(ofSize: 15), frame: .zero)
            let descLB = UILabel(title: "", textColor: 0x777777, font: UIFont.systemFont(ofSize: 13), frame: .zero)
            let arrowImg = UIImageView(imageName: "home_arrow", cornerRadius: 0, frame: .zero)
            let takingBtn = UIButton(title: "", font: UIFont.systemFont(ofSize: 18), titleColor: 0xffffff, cornerRadius: 0, imageName: "", frame: .zero, target: self, sle: #selector(takingClick))
            
            addSubview(baseView)
            baseView.addSubview(imgView)
            baseView.addSubview(titleLB)
            baseView.addSubview(descLB)
            baseView.addSubview(arrowImg)
            baseView.addSubview(takingBtn)
            
            baseView.snp.makeConstraints { (make) in
                make.top.equalTo(propH(height: 30 + CGFloat(i * 117)))
                make.left.equalTo(propW(width: propW(width: 25)))
                make.right.equalTo(propW(width: propW(width: -25)))
                make.height.equalTo(propH(height: 87))
            }
            imgView.snp.makeConstraints { (make) in
                make.top.equalTo(propH(height: 13))
                make.left.equalTo(propW(width: 22))
                make.size.equalTo(CGSize(width: propW(width: 71), height: propH(height: 61)))
            }
            titleLB.snp.makeConstraints { (make) in
                make.top.equalTo(propH(height: 24))
                make.left.equalTo(imgView.snp.right).offset(propW(width: 28))
                make.height.equalTo(propH(height: 15))
            }
            descLB.snp.makeConstraints { (make) in
                make.top.equalTo(titleLB.snp.bottom).offset(propH(height: 12))
                make.left.equalTo(imgView.snp.right).offset(propW(width: 28))
                make.height.equalTo(propH(height: 13))
            }
            arrowImg.snp.makeConstraints { (make) in
                make.right.equalTo(propW(width: -8))
                make.size.equalTo(CGSize(width: propW(width: 22), height: propH(height: 22)))
                make.centerY.equalTo(baseView)
            }
            takingBtn.snp.makeConstraints { (make) in
                make.edges.equalTo(baseView)
            }
            
            if i == 0 {
                imgView.image = UIImage(named: "home_lead_id_sel")
                titleLB.text = "身份证正面"
                descLB.text = "请拍摄身份证正面照"
            }else{
                imgView.image = UIImage(named: "home_lead_id_nor")
                titleLB.text = "身份证反面"
                descLB.text = "请拍摄身份证反面照"
                lastIDView = baseView
            }
        }
        
        for i in 0...2 {
            let baseView = UIView(frame: .zero, bgColor: 0xffffff)
            let titleLB = UILabel(title: "", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
            let descTF = UITextField()
            descTF.textColor = kRGBColorFromHex(rgbValue: 0x333333)
            descTF.font = UIFont.systemFont(ofSize: 15)
            let lineView = UIView(frame: .zero, bgColor: 0xEBEBEB)
            
            addSubview(baseView)
            baseView.addSubview(titleLB)
            baseView.addSubview(descTF)
            baseView.addSubview(lineView)
            
            baseView.snp.makeConstraints { (make) in
                make.top.equalTo(lastIDView.snp.bottom).offset(propH(height:5 + CGFloat(i * 63)))
                make.left.equalTo(propW(width: 25))
                make.right.equalTo(propW(width: -25))
                make.height.equalTo(propH(height: 63))
            }
            titleLB.snp.makeConstraints { (make) in
                make.centerY.equalTo(baseView)
                make.left.equalTo(propW(width: 11))
            }
            descTF.snp.makeConstraints { (make) in
                make.top.equalTo(0)
                make.bottom.equalTo(0)
                make.right.equalTo(0)
                make.left.equalTo(titleLB.snp.right).offset(propW(width: 21))
            }
            lineView.snp.makeConstraints { (make) in
                make.bottom.equalTo(0)
                make.left.equalTo(0)
                make.right.equalTo(0)
                make.height.equalTo(propH(height: 1))
            }
            
            switch i {
            case 0 :
                titleLB.text = "姓名"
                break
            case 1 :
                titleLB.text = "身份证"
                break
            case 2:
                titleLB.text = "有效期"
                lastTFView = baseView
                break
            default:
                break
            }
            
        }
        
        let actionBtn = UIButton(title: "提交", font: UIFont.boldSystemFont(ofSize: 18), titleColor: 0xFFDD01, cornerRadius: propH(height: 23), imageName: "", frame: .zero, target: self, sle: #selector(actionClick))
        actionBtn.backgroundColor = titleMainColor()
        addSubview(actionBtn)
        actionBtn.snp.makeConstraints { (make) in
            make.top.equalTo(lastTFView.snp.bottom).offset(propH(height: 22))
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
