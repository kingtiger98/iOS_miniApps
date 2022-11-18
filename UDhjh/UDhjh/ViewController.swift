//  ViewController.swift
//  UDhjh
//  Created by 황재하 on 11/15/22.
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblNumber: UILabel!
    var x = 0
    
    @IBAction func btnUp(_ sender: UIButton) {
        x = x + 1
        lblNumber.text = String(x)
    }
    
    @IBAction func btnDown(_ sender: UIButton) {
        x = x - 1
        lblNumber.text = String(x)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
