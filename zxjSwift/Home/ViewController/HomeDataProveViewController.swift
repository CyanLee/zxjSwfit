//
//  HomeDataProveViewController.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/4/16.
//  Copyright © 2019 今日. All rights reserved.
//  资料认证

import UIKit

class HomeDataProveViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        createUI()
        // Do any additional setup after loading the view.
    }
    
    /// 初始化
    func initialize() {
        self.title = "资料认证"
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
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeDataProveCell", for: indexPath) as! HomeDataProveCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return propH(height: 87)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectuinV = HomeDataProveSectionView(frame: CGRect(x: 0, y: 0, width: SW, height: propH(height: 67)))
        sectuinV.index = section
        return sectuinV
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return propH(height: 67)
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    /// 网络请求
    /// 懒加载
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped, separatorStyle: 0, delegate: self)
        tableView.register(HomeDataProveCell.self, forCellReuseIdentifier: "HomeDataProveCell")
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
