//
//  HomeDataProveCell.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/16.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeDataProveCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        initialize()
        createUI()
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
    
    /// 初始化
    func initialize() {
        
    }
    /// 创建UI
    func createUI() {
        addSubview(iconImgV)
        addSubview(titleLB)
        addSubview(descLB)
        addSubview(arrowImg)
        iconImgV.snp.makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.left.equalTo(propW(width: 16))
            make.size.equalTo(CGSize(width: propW(width: 85), height: propH(height: 61)))
        }
        titleLB.snp.makeConstraints { (make) in
            make.top.equalTo(propH(height: 24))
            make.left.equalTo(iconImgV.snp.right).offset(propW(width: 20))
            make.height.equalTo(propH(height: 15))
        }
        descLB.snp.makeConstraints { (make) in
            make.top.equalTo(titleLB.snp.bottom).offset(propH(height: 15))
            make.left.equalTo(iconImgV.snp.right).offset(propW(width: 20))
            make.height.equalTo(propH(height: 13))
        }
        arrowImg.snp.makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.size.equalTo(CGSize(width: propW(width: 22), height: propH(height: 22)))
            make.right.equalTo(propW(width: -8))
        }
    }
    /// 私用方法
    /// 公共方法
    /// 点击事件
    /// 代理协议
    /// 网络请求
    /// 懒加载
    private lazy var iconImgV: UIImageView = {
        let iconImgV = UIImageView(imageName: "", cornerRadius: 0, frame: .zero)
        iconImgV.backgroundColor = UIColor.red
        return iconImgV
    }()
    
    private lazy var titleLB: UILabel = {
        let titleLB = UILabel(title: "身份信息", textColor: 0x333333, font: UIFont.boldSystemFont(ofSize: 15), frame: .zero)
        return titleLB
    }()
    
    private lazy var descLB: UILabel = {
        let descLB = UILabel(title: "已认证", textColor: 0x777777, font: UIFont.systemFont(ofSize: 13), frame: .zero)
        return descLB
    }()
    
    private lazy var arrowImg: UIImageView = {
        let arrowImg = UIImageView(imageName: "home_arrow", cornerRadius: 0, frame: .zero)
        return arrowImg
    }()
    
    /// getset方法
    override var frame:CGRect{
        didSet {
            var newFrame = frame
            newFrame.origin.x = propW(width: 25)
            newFrame.size.width = CGFloat(SW - propW(width: 50))
            super.frame = newFrame
        }
    }
    
    public var index : Int? {
        didSet{
            
        }
    }
    
}
