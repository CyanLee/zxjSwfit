//
//  HomeHeaderView.swift
//  
//
//  Created by 今日 on 2019/3/14.
//

import UIKit

class HomeHeaderView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(pointImgV)
        addSubview(titleLB)
        addSubview(descLB)
        addSubview(serviceBtn)
        pointImgV.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.size.equalTo(CGSize(width: propW(width: 72), height: propH(height: 60)))
        }
        titleLB.snp.makeConstraints { (make) in
            make.top.equalTo(propH(height: 35))
            make.left.equalTo(propW(width: 24))
        }
        descLB.snp.makeConstraints { (make) in
            make.top.equalTo(pointImgV.snp.bottom).offset(propH(height: 17))
            make.left.equalTo(propW(width: 23))
        }
        serviceBtn.snp.makeConstraints { (make) in
            make.right.equalTo(propW(width: -22))
            make.size.equalTo(CGSize(width: propW(width: 22), height: propH(height: 22)))
            make.centerY.equalTo(descLB)
        }
    }
    
    /// 点球
    private lazy var pointImgV: UIImageView = {
        let pointImgV = UIImageView()
        pointImgV.image = UIImage(named: "home_point_bg")
        return pointImgV
    }()
    
    /// 标题
    private lazy var titleLB: UILabel = {
        let titleLB = UILabel()
        titleLB.text = "借款"
        titleLB.textColor = titleMainColor()
        titleLB.font = UIFont.boldSystemFont(ofSize: 20)
        return titleLB
    }()
    
    /// 描述
    private lazy var descLB: UILabel = {
        let descLB = UILabel()
        descLB.text = "知心借 你来我就借"
        descLB.textColor = kRGBColorFromHex(rgbValue: 0x666666)
        return descLB
    }()
    
    /// 客服按钮
    private lazy var serviceBtn: UIButton = {
        let serviceBtn = UIButton(type: .custom)
        serviceBtn.setImage(UIImage(named: "home_service_btn_icon"), for: .normal)
        serviceBtn.addTarget(self, action: #selector(serviceClick), for: .touchUpInside)
        return serviceBtn
    }()
    
    
    /// 客服点击事件
    @objc func serviceClick() {
        
    }
    
}
