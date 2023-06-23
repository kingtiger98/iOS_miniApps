//
//  ViewController.swift
//  diceApp
//
//  Created by 황재하 on 6/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImg: UIImageView!
    @IBOutlet weak var secondImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 배열에 이미지들 저장
    var diceList : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBAction func changeDice(_ sender: Any) {
        // 배열에서 랜덤하게 가져오도록 메서드 randomElement 사용
        firstImg.image = UIImage(named: diceList.randomElement()!)
        secondImg.image = UIImage(named: diceList.randomElement()!)

        
        
        
    }
    
}

