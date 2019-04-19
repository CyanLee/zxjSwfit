//
//  HomeBorrowListViewController.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/17.
//  Copyright © 2019 今日. All rights reserved.
//  我的借款

import UIKit

class HomeBorrowListViewController: BaseViewControlle,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        createUI()
        // Do any additional setup after loading the view.
    }
    
    /// 初始化
    func initialize() {
        self.title = "我的借款"
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
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeBorrowListCell", for: indexPath) as! HomeBorrowListCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return propH(height: 212)
    }
    /// 网络请求
    /// 懒加载
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped, separatorStyle: 0, delegate: self)
        tableView.register(HomeBorrowListCell.self, forCellReuseIdentifier: "HomeBorrowListCell")
        return tableView
    }()
    /// getset方法

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
