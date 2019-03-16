//
//  UILabel+extension.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/16.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

extension UIButton {
    
    /// 创建UIButton
    ///
    /// - Parameters:
    ///   - title: 按钮文字
    ///   - fontSize: 文字大小
    ///   - titleColor: 文字颜色
    ///   - cornerRadius: 圆角度数
    ///   - frame: 位置
    ///   - target: 目标
    ///   - sle: 想要方法
    /// - Returns: UIButton
    convenience init(title: String, fontSize: CGFloat, titleColor: UIColor, cornerRadius: CGFloat, imageName: String, frame: CGRect, target: Any?, sle: Selector) {
        self.init(type: .custom)
        self.frame = frame
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        if cornerRadius > 0 {
            self.clipsToBounds = true
            self.layer.cornerRadius = cornerRadius
        }
        
        if imageName.count > 0 || !imageName.isEmpty {
            self.setImage(UIImage(named: imageName), for: .normal)
        }
        
        self.addTarget(target, action: sle, for: .touchUpInside)

    }
}
