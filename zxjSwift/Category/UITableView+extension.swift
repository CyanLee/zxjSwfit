//
//  UILabel+extension.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/16.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

extension UITableView {
    
    /// 创建UITableView
    ///
    /// - Parameters:
    ///   - frame: 位置
    ///   - style: 表格风格
    ///   - separatorStyle: 去掉cell间的白线
    ///   - delegate: 代理
    /// - Returns: tableView    
    convenience init(frame: CGRect, style:UITableView.Style, separatorStyle:CGFloat,delegate:Any?) {
        self.init(frame: frame, style: style)
        self.backgroundColor = UIColor.white
        self.delegate = delegate as? UITableViewDelegate
        self.dataSource = delegate as? UITableViewDataSource
        self.separatorStyle = UITableViewCell.SeparatorStyle(rawValue: Int(separatorStyle))!
        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        self.tableFooterView = UIView()
    }
}
