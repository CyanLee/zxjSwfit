//
//  HomeViewController.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/14.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: BaseViewControlle,UITableViewDelegate,UITableViewDataSource  {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    
    /// 设置UI
    func setupUI() {
        view.addSubview(homeHeaderView)
        view.addSubview(tableView)
        homeHeaderView.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.size.equalTo(CGSize(width: SW, height: propH(height: 105)))
        }
        tableView.snp.makeConstraints { (make) in
            make.top.equalTo(homeHeaderView.snp.bottom).offset(propH(height: 11))
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "HomeBannerCell", for: indexPath) as! HomeBannerCell
        return tableCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return propH(height: 186)
        }else if (indexPath.row == 1) {
            return propH(height: 50)
        }else{
            return propH(height: 277)
        }
    }
    
    /// 懒加载
    /// 首页头部视图
    private lazy var homeHeaderView: HomeHeaderView = {
        let homeHeaderView = HomeHeaderView()
        return homeHeaderView
    }()
    
    /// 列表
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.register(UITableViewCell(), forCellReuseIdentifier: "cell")
        tableView.register(HomeBannerCell.self, forCellReuseIdentifier: "HomeBannerCell")
        return tableView
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
