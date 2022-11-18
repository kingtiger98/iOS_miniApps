//  ViewController.swift
//  hwanghello
//  Created by 황재하 on 11/8/22.

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblHello: UILabel!
    
    // Delete버튼 구현방법_1
    // action버튼 => btnDelete 삭제 버튼 생성
    //    @IBAction func btnDelete(_ sender: UIButton) {
    //        lblHello.text = ""
    //        txtName.text = ""
    //    }
    
    // Delete버튼 구현방법_2
    // action버튼 => btnSend에 태그를 1에' 누르세요" 버튼,
    // tag2에 "Delete" 버튼 할당
    @IBAction func btnSend(_ sender: UIButton) {
        if sender.tag == 1 {
            lblHello.text = "Hello, " + txtName.text!
            lblHello.textColor = UIColor.white
        } else if sender.tag == 2 {
            lblHello.text = ""
            txtName.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

