//
//  MineContentView.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/16.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class MineContentView: UIView,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var iconArray = [NSString](arrayLiteral: "mine_prove","mine_money","mine_bill","mine_bank_card","mine_change_phone","mine_help","mine_passwork","mine_updata")
    var titleArry = [NSString](arrayLiteral: "我的认证","我的资金","我的账单","银行卡","修改号码","帮助中心","设置密码","版本更新")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setinitup() {
        
    }
    
    func setupUI() {
        addSubview(collectionView)
        collectionView.snp.makeConstraints { (make) in
            make.edges.equalTo(self)
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MineContentViewCell", for: indexPath) as! MineContentViewCell
        cell.iconImgArray = iconArray as [String]
        cell.titleArray = titleArry as [String]
        cell.index = indexPath.row
        return cell
    }
    
    
    /// 类别
    private lazy var collectionView: UICollectionView = {
        var w = SW / 3
        let collectionView = UICollectionView(frame: .zero, delegate: self, setScrollDirection: UICollectionView.ScrollDirection.vertical, itemSize: CGSize(width: w, height: propH(height: 100)), minimumInteritemSpacing: 0, minimumLineSpacing: 0, layoutSectionInset: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        collectionView.register(MineContentViewCell.self, forCellWithReuseIdentifier: "MineContentViewCell")
        return collectionView
    }()

}
