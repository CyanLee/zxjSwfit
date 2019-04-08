//
//  HomeWebViewController.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/8.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeWebViewController: BaseViewControlle {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    convenience init(type_id: String, dealID: String) {
        self.init()
        view.addSubview(actionBtn)
        view.addSubview(webView)
        actionBtn.snp.makeConstraints { (make) in
            make.bottom.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(propH(height: 50))
        }
        webView.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(actionBtn.snp.top).offset(0)
        }
//        webView.loadHTMLString("https://www.baidu.com", baseURL: nil)
//        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
        let request = URLRequest(url: URL(string: "https://www.baidu.com")!)
        webView.loadRequest(request)
        self.navigationItem.title = "借款协议"
    }
    
    /// 初始化
    func initialize() {
        
    }
    /// 创建UI
    func createUI() {
        
    }
    /// 私用方法
    
    /// 公共方法
    /// 点击事件
    
    /// 确定
    @objc func actionClick(sender: UIButton) {
        
    }
    /// 代理协议
    /// 网络请求
    /// 懒加载
    
    ///网页视图
    private lazy var webView: UIWebView = {
        let webView = UIWebView()
        return webView
    }()
    
    ///确定按钮
    private lazy var actionBtn: UIButton = {
        let actionBtn = UIButton(title: "我已阅读并同意 - 下一步", font: UIFont.systemFont(ofSize: 20), titleColor: 0x333333, cornerRadius: 0, imageName: "", frame: .zero, target: self, sle: #selector(actionClick(sender:)))
        actionBtn.backgroundColor = kRGBColorFromHex(rgbValue: 0xFFDD01)
        return actionBtn
    }()
    /// getset方法

}
