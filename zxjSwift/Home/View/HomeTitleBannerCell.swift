//
//  HomeTitleBannerCell.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/15.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeTitleBannerCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
        selectionStyle = .none
        backgroundColor = kRGBColorFromHex(rgbValue: 0xF5F6FA)
        addSubview(baseView)
        baseView.addSubview(horn)
        baseView.addSubview(bannerView)
        
        baseView.snp.makeConstraints { (make) in
            make.top.equalTo(propH(height: 5))
            make.bottom.equalTo(propH(height: -5))
            make.left.equalTo(0)
            make.right.equalTo(0)
        }
        
        horn.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 23))
            make.size.equalTo(CGSize(width: propW(width: 19), height: propH(height: 17)))
            make.centerY.equalTo(baseView)
        }
        
        bannerView.snp.makeConstraints { (make) in
            make.left.equalTo(horn.snp.right).offset(propW(width: 11))
            make.top.equalTo(0)
            make.bottom.equalTo(0)
            make.right.equalTo(0)
        }
        
    }
    
    
    /// 底部视图
    private lazy var baseView: UIView = {
        let baseView = UIView()
        baseView.backgroundColor = UIColor.white
        return baseView
    }()
    
    
    /// 小喇叭
    private lazy var horn: UIImageView = {
        let horn = UIImageView()
        horn.image = UIImage(named: "home_horn")
        return horn
    }()
    
    
    /// 轮播
    private lazy var bannerView: SDCycleScrollView = {
        let bannerView = SDCycleScrollView(frame: .zero)
        bannerView.onlyDisplayText = true
        bannerView.titleLabelBackgroundColor = UIColor.white
        bannerView.titleLabelTextColor = kRGBColorFromHex(rgbValue: 0x333333)
        bannerView.scrollDirection = .vertical
        bannerView.titlesGroup = ["恭喜张先生成功借款2000元","恭喜王先生成功借款8000元"]
        bannerView.disableScrollGesture()
        return bannerView
    }()

}
