//
//  ViewController.swift
//  modernCollectionView
//
//  Created by 황재하 on 6/26/23.
//

import UIKit

class ViewController: UIViewController {

    // 컬렉션뷰 생성
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: .init())
    
    private var dataSource: UICollectionViewDiffableDataSource<Sections, Items>?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(BannerCollectionViewCell.self, forCellWithReuseIdentifier: BannerCollectionViewCell.id)
        collectionView.setCollectionViewLayout(createLayout(), animated: true)
        setDataSource()
        setSnapShot()
    }
    
    private func setDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Sections, Items>(collectionView: collectionView, cellProvider: { collectionView, indexPath, itemIdentifier in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BannerCollectionViewCell.id, for: indexPath) as? BannerCollectionViewCell else {
                return UICollectionViewCell()
            }
            return cell
        })
    }
    
    private func setSnapShot() {
        var snapshot = NSDiffableDataSourceSnapshot<Sections, Items>()
        
        snapshot.appendSections([Sections(id: "Banner")])
        let bannerItems = [
            Items.banner(HomeItem(title: "인덕대학교", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXrLRIRC6S5ahTx-4x7HdWYT7pwp_-1l5EGixErJ_6Gtw1oSh8wS7r8YvOG_0pbYU5Sk4&usqp=CAU")),
            Items.banner(HomeItem(title: "인덕대학교2", imageUrl:
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXrLRIRC6S5ahTx-4x7HdWYT7pwp_-1l5EGixErJ_6Gtw1oSh8wS7r8YvOG_0pbYU5Sk4&usqp=CAU")),
            Items.banner(HomeItem(title: "인덕대학교3", imageUrl:
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXrLRIRC6S5ahTx-4x7HdWYT7pwp_-1l5EGixErJ_6Gtw1oSh8wS7r8YvOG_0pbYU5Sk4&usqp=CAU"))
        ]
        
        snapshot.appendItems(bannerItems, toSection: Sections(id: "Banner"))
        dataSource?.apply(snapshot)
    }

    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout(sectionProvider: { sectionIndex, _ in
              let section = self.createBannerSection()
              return section
          })
    }
    
    private func createBannerSection() -> NSCollectionLayoutSection{
        // item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(200))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        // section
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        
        return section
    }

}



