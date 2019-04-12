//
//  HomeAlsoMoneyTitleCell.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/12.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeAlsoMoneyTitleCell: UITableViewCell {

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
    
//    - (void)setFrame:(CGRect)frame{
//    // cell设置左右边距 和 切圆
//    frame.origin.x = 33;//这里间距为10，可以根据自己的情况调整
//    frame.size.width = kScreenWidth - 66;
//    [super setFrame:frame];
//    }
    
    /// 重写frame方法
    override var frame:CGRect{
        didSet {
            var newFrame = frame
            newFrame.origin.x = 15
            newFrame.size.width = CGFloat(SW - propW(width: 30))
            super.frame = newFrame
        }
    }

    /// 初始化
    func initialize() {
        
    }
    /// 创建UI
    func createUI() {
//        self.backgroundColor = UIColor.clear
        addSubview(titleLB)
        addSubview(descLB)
        addSubview(lineV)
        titleLB.snp.makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.left.equalTo(propW(width: 22))
            make.height.equalTo(propH(height: 14))
        }
        descLB.snp.makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.right.equalTo(propW(width: -26))
            make.height.equalTo(propH(height: 14))
        }
        lineV.snp.makeConstraints { (make) in
            make.left.equalTo(propW(width: 22))
            make.right.equalTo(propW(width: 0))
            make.bottom.equalTo(0)
            make.height.equalTo(propH(height: 1))
        }
    }
    /// 私用方法
    /// 公共方法
    /// 点击事件
    /// 代理协议
    /// 网络请求
    /// 懒加载
    
    /// 标题
    private lazy var titleLB: UILabel = {
        let titleLB = UILabel(title: "借款日期", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        return titleLB
    }()
    
    /// 详情
    private lazy var descLB: UILabel = {
        let descLB = UILabel(title: "2018-09-01", textColor: 0x333333, font: UIFont.systemFont(ofSize: 15), frame: .zero)
        return descLB
    }()
    
    /// 线
    private lazy var lineV: UIView = {
        let lineV = UIView(frame: .zero, bgColor: 0xF3F3F3)
        lineV.isHidden = true
        return lineV
    }()
    
    /// getset方法

}
