//  ViewController.swift
//  BMIhjh48
//  Created by 황재하 on 11/22/22.

import UIKit
import Foundation

class ViewController: UIViewController {
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcBmi(_ sender: UIButton) {
        //let weight = 60.0
        //let height = 170.0
        
        // 옵셔널 String형을 그냥 String형으로 바꾸기위해 text에 !붙힘
        // 그리고 Double형으로 다시 바꿔주면서 한 번더 옵셔널 Double형이 되기 때문에
        // 한번더 !로 옵셔널 값을 풀어준다
        //let weight = Double(txtWeight.text!)!
        //let height = Double(txtHeight.text!)!

        // 키나 체중이 nil값인 경우 처리
        if txtHeight.text == "" || txtWeight.text == "" {
            print("Input error")
            lblResult.text = "키와 체중을 입력하세요"
            return
        } else {
            let weight = Double(txtWeight.text!)!
            let height = Double(txtHeight.text!)!
            print(height, weight)
            let bmi = weight / (height*height*0.0001)
            let shortenedBmi = String(format: "%.1f", bmi)
            var body = ""
            
            // BMI별 결과출력 창 배경색 변경용 변수 color
            var color = UIColor.white
            
            if bmi >= 40 {
                color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "3단계 비만"
            } else if bmi >= 30 && bmi < 40 {
                color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "2단계 비만"
            } else if bmi >= 25 && bmi < 30 {
                color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "1단계 비만"
            } else if bmi >= 18.5 && bmi < 25 {
                color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
                body = "정상"
            } else {
                color = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
                body = "저체중"
            }
            //print("BMI:\(shortenedBmi), 판정:\(body)")
            lblResult.backgroundColor = color
            lblResult.clipsToBounds = true
            lblResult.layer.cornerRadius = 20
            
            lblResult.text = " BMI:\(shortenedBmi), 판정:\(body)"
        }
    }
}
