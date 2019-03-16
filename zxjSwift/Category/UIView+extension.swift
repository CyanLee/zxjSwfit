//
//  UILabel+extension.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/16.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

extension UIView {
    
    /// 创建UIView
    ///
    /// - Parameters:
    ///   - frame: 位置
    ///   - bgColor: 背景颜色
    /// - Returns: view    
    convenience init(frame: CGRect, bgColor: UIColor) {
        self.init()
        self.frame = frame
        self.backgroundColor = bgColor
    }
}
