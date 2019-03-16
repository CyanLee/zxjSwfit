//
//  MineViewController.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/14.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class MineViewController: BaseViewControlle {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        view.addSubview(headerView)
        view.addSubview(contentView)
        headerView.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(propH(height: 210))
        }
        contentView.snp.makeConstraints { (make) in
            make.top.equalTo(headerView.snp.bottom).offset(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        }
    }
    
    
    /// 头部视图
    private lazy var headerView: MineHeaderView = {
        let headerView = MineHeaderView()
        return headerView
    }()
    
    private lazy var contentView: MineContentView = {
        let contentView = MineContentView()
        return contentView
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
