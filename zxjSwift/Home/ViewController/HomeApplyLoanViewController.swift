//
//  HomeApplyLoanViewController.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/4.
//  Copyright © 2019 今日. All rights reserved.
//  申请借款

import UIKit

class HomeApplyLoanViewController: BaseViewControlle,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        createUI()
        // Do any additional setup after loading the view.
    }
    
    /// 初始化
    func initialize() {
        self.title = "申请借款"
    }
    /// 创建UI
    func createUI() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
    }
    /// 私用方法
    /// 公共方法
    /// 点击事件
    /// 代理协议
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeApplyLoanImgCell", for: indexPath) as! HomeApplyLoanImgCell
        cell.index = indexPath.row
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    /// 网络请求
    /// 懒加载
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain, separatorStyle: 0, delegate: self)
        tableView.register(HomeApplyLoanImgCell.self, forCellReuseIdentifier: "HomeApplyLoanImgCell")
        tableView.tableFooterView = footerView
        if #available(iOS 11.0, *) {
            tableView.contentInsetAdjustmentBehavior = .never
        }
        return tableView
    }()
    private lazy var footerView: HomeApplyLoanImgFootView = {
        let footerView = HomeApplyLoanImgFootView()
        return footerView
    }()
    /// getset方法
}
