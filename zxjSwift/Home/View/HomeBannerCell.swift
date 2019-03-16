//
//  HomeBannerCell.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/14.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit
import SnapKit

class HomeBannerCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        selectionStyle = .none
        addSubview(bannerView)
        bannerView.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(propW(width: 23))
            make.right.equalTo(propW(width: -23))
            make.bottom.equalTo(propH(height: -25))
        }
    }
    
    
    /// 轮播
    private lazy var bannerView: SDCycleScrollView = {
        let bannerView = SDCycleScrollView.init(frame: .zero)
        bannerView.localizationImageNamesGroup = ["home_banner_1","home_banner_2","home_banner_3"]
        bannerView.pageDotImage = UIImage(named: "home_banner_nor")
        bannerView.currentPageDotImage = UIImage(named: "home_banner_sel")
        return bannerView
    }()

}
