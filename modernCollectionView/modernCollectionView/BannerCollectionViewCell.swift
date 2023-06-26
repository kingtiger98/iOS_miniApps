//
//  BannerCollectionViewCell.swift
//  modernCollectionView
//
//  Created by 황재하 on 6/26/23.
//

import UIKit
import SnapKit

class BannerCollectionViewCell: UICollectionViewCell {
    static let id = "BannerCell"
    let titleLabel = UILabel()
    let backgroundImage = UIImageView()
    
    // init() 안엔 title과 image를 넣을 수 없다
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
        
    }

    // Snapkit 사용, Constraint 적용
    private func setUI() {
        // Snapkit
        self.addSubview(titleLabel)
        self.addSubview(backgroundImage)
        
        // Constraint 적용
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        backgroundImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    // title과 image 셋팅 함수
    public func config(titel: String, imageUrl: String) {
        titleLabel.text = "타이틀입니다."
//        imageUrl
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
