//
//  ViewController.swift
//  changeText
//
//  Created by 황재하 on 6/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeBtn(_ sender: Any) {
        txtLabel.text = "황재하에용"
        txtLabel.backgroundColor = .green
    }
}

