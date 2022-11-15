//
//  ViewController.swift
//  hwanghello
//
//  Created by 황재하 on 11/8/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblHello: UILabel!
    @IBAction func btnSend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

