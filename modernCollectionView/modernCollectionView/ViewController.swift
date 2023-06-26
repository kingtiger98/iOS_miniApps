//
//  ViewController.swift
//  modernCollectionView
//
//  Created by 황재하 on 6/26/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

// 컬렉션 뷰 생성 전 섹션과 아이템 정의
// 구현 전 설명 ===================================================
// Sections안에 Items이 있고
// Items은 세 가지 타입이 있다 (banner, normalCarousel, listCarousel)
// 세 가지의 타입의 셀 안의 데이터는 HomeItem이 들어간다

// collectionView의 섹션이나 아이템이 되려면 Hashable이라는 프로토콜 채택 필수!

struct Sections: Hashable {
    let id: String
}

// api를 통해 가져온 데이터들은 Items의 안에 들어갈 것임
enum Items: Hashable {
    case banner(HomeItem)
    case normalCarousel(HomeItem)
    case listCarousel(HomeItem)
}

struct HomeItem: Hashable {
    let title: String
    let subTitle: String?
    let imageUrl: String
}

