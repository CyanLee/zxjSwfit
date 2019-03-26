//
//  HomeLeadToProveChooseView.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/3/26.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeLeadToProveChooseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        let w = SW / 3
        let h = propH(height: 56)
        for i in 0...2 {
            let baseView = UIView(frame: .zero, bgColor: 0xffffff)
            let orderImg = UIImageView(imageName: "", cornerRadius: 0, frame: .zero)
            let titleLB = UILabel(title: "", textColor: 0x2F3942, font: UIFont.boldSystemFont(ofSize: 15), frame: .zero)
            
            addSubview(baseView)
            baseView.addSubview(orderImg)
            baseView.addSubview(titleLB)
            
            baseView.snp.makeConstraints { (make) in
                make.left.equalTo(i * Int(w))
                make.top.equalTo(0)
                make.bottom.equalTo(0)
                make.height.equalTo(h)
                make.width.equalTo(w)
            }
            orderImg.snp.makeConstraints { (make) in
                make.top.equalTo(0)
                make.centerX.equalTo(baseView)
                make.size.equalTo(CGSize(width: propW(width: 22), height: propH(height: 22)))
            }
            titleLB.snp.makeConstraints { (make) in
                make.top.equalTo(orderImg.snp.bottom).offset(propH(height: 8))
                make.centerX.equalTo(baseView)
                make.size.equalTo(CGSize(width: propW(width: 22), height: propH(height: 22)))
            }
            
            if i == 0 {
                baseView.backgroundColor = UIColor.purple
            }else if (i == 1) {
                baseView.backgroundColor = UIColor.yellow
            }else if (i == 2) {
                baseView.backgroundColor = UIColor.red
            }
            
        }
        let lineView = UIView(frame: .zero, bgColor: 0xDEDEDE)
        addSubview(lineView)
        lineView.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 18))
            make.right.equalTo(propW(width: -18))
            make.bottom.equalTo(0)
            make.height.equalTo(propH(height: 1))
        }
    }

}
