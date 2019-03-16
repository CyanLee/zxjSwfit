//
//  MineContentView.swift
//  zxjSwift
//
//  Created by 今日 on 2019/3/16.
//  Copyright © 2019 今日. All rights reserved.
//

import UIKit

class MineContentView: UIView,UICollectionViewDelegate,UICollectionViewDataSource {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = UIColor.red
        return cell
    }
    
    
    /// 类别
    private lazy var collectionView: UICollectionView = {
        var w = SW / 3
        let collectionView = UICollectionView(frame: .zero, delegate: self, setScrollDirection: UICollectionView.ScrollDirection.vertical, itemSize: CGSize(width: w, height: w), minimumInteritemSpacing: 0, minimumLineSpacing: 0, layoutSectionInset: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return collectionView
    }()

}
