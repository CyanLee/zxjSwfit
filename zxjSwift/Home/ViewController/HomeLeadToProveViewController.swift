//
//  HomeLeadToProveViewController.swift
//  zxjSwift
//
//  Created by 管家人 on 2019/3/26.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class HomeLeadToProveViewController: BaseViewControlle,UITableViewDelegate,UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "个人认证"
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        view.addSubview(headerView)
        view.addSubview(tableView)
        headerView.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(propH(height: 56))
        }
        tableView.snp.makeConstraints { (make) in
            make.top.equalTo(headerView.snp.bottom).offset(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeLeadToProveidenCell", for: indexPath) as! HomeLeadToProveidenCell
        return cell
    }
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain, separatorStyle: 0, delegate: self)
        tableView.register(HomeLeadToProveidenCell.self, forCellReuseIdentifier: "HomeLeadToProveidenCell")
        if #available(iOS 11.0, *) {
            tableView.contentInsetAdjustmentBehavior = .never
        }
        return tableView
    }()

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return propH(height: 611 - knaviH())
    }
    
    /// 选择头部
    private lazy var headerView: HomeLeadToProveChooseView = {
        let headerView = HomeLeadToProveChooseView()
        return headerView
    }()

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
