//
//  HomeLeadToProveidenCell.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/3/27.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeLeadToProveidenCell: UITableViewCell {
    
    var lastView = UIView()
    
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
    
    func setupUI() {
        for i in 0...1 {
            let baseView = UIView(frame: .zero, bgColor: 0xFFDD01)
            baseView.layer.masksToBounds = true
            baseView.layer.borderWidth = propW(width: 1)
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
                lastView = baseView
            }
        }
        let actionBtn = UIButton(title: "提交", font: UIFont.boldSystemFont(ofSize: 18), titleColor: 0xFFDD01, cornerRadius: propH(height: 23), imageName: "", frame: .zero, target: self, sle: #selector(actionClick))
        actionBtn.backgroundColor = titleMainColor()
        addSubview(actionBtn)
        actionBtn.snp.makeConstraints { (make) in
            make.top.equalTo(self.lastView.snp.bottom).offset(propH(height: 65))
            make.left.equalTo(propW(width: 32))
            make.right.equalTo(propW(width: -32))
            make.height.equalTo(propH(height: 46))
        }
    }
}
