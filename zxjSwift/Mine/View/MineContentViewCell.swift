//
//  MineContentViewCell.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/16.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class MineContentViewCell: UICollectionViewCell {
    
    /// 图片数组
    public var iconImgArray = [String]()
    
    /// 文字数组
    public var titleArray = [String]()
    public var index : Int? {
        didSet{
            iconImgV.image = UIImage(named: iconImgArray[index!])
            titleLB.text = titleArray[index!]
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupUI() {
        addSubview(iconImgV)
        addSubview(titleLB)
        iconImgV.snp.makeConstraints { (make) in
            make.top.equalTo(propH(height: 35))
            make.centerX.equalTo(self)
            make.size.equalTo(CGSize(width: propW(width: 37), height: propH(height: 37)))
        }
        titleLB.snp.makeConstraints { (make) in
            make.top.equalTo(iconImgV.snp.bottom).offset(propH(height: 16))
            make.centerX.equalTo(self)
        }
    }
    
    
    /// 图片
    private lazy var iconImgV: UIImageView = {
        let iconImgV = UIImageView(imageName: "", cornerRadius: 0, frame: .zero)
        return iconImgV
    }()
    
    private lazy var titleLB: UILabel = {
        let titleLB = UILabel(title: "", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        return titleLB
    }()
}
