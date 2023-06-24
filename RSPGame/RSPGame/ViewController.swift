//
//  ViewController.swift
//  RSPGame
//
//  Created by 황재하 on 6/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    // 승,패,비김 출력
    @IBOutlet weak var mainLb: UILabel!
    
    // 컴퓨터 UI
    @IBOutlet weak var aiPick: UIImageView!
    @IBOutlet weak var aiPickLb: UILabel!
    
    // 플레이어 UI
    @IBOutlet weak var playerPick: UIImageView!
    @IBOutlet weak var playerPickLb: UILabel!
    
    var playerPicked: Rps = Rps.rock
    
    // 컴퓨터 랜덤으로 픽하게끔
    var aiPicked: Rps = Rps(rawValue: Int.random(in: 0...2))!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 게임 시작전 준비 이미지와 텍스트 띄우기
        aiPick.image = UIImage(named: "ready.png")
        playerPick.image = UIImage(named: "ready.png")
        aiPickLb.text = "준비"
        playerPickLb.text = "준비"
        
        // RpsData 스위프트 파일에서 만든 열거형 Rps에 접근, 따로 만들어서 간편하게 사용 코드 복잡도 내려감
        // Rps.paper

    }

    // 액션 버튼 하나에 버튼 세 개(가위, 바위, 보) 연결
    @IBAction func rpsBtnPick(_ sender: UIButton) {
        // 가위, 바위, 보 중 선택한 정보를 저장해야함
        
        // 누른 버튼의 문자(가위, 바위, 보)를 알려줌
        guard let pick = sender.titleLabel?.text else {
                print("버튼 타이틀을 가져올 수 없습니다.")
                return
            }
            
            // 내가 선택한 정보를 myPicked에 저장
            switch pick {
                case "가위" :
                playerPicked = Rps.scissor // "가위"열거형을 만들어서 저장
                case "바위" :
                playerPicked = Rps.rock // "바위"열거형을 만들어서 저장
                case "보" :
                playerPicked = Rps.paper // "보"열거형을 만들어서 저장
                default:
                    break
            }
    }
    
    @IBAction func selectBtn(_ sender: UIButton) {
        // ai가 랜덤하게 선택한 것(aiPicked) 이미지뷰와 레이블에 표시
        switch aiPicked{
        case Rps.scissor:
            aiPick.image = UIImage(named: "scissor.png")
            aiPickLb.text = "가위"
        case Rps.rock:
            aiPick.image = UIImage(named: "rock.png")
            aiPickLb.text = "바위"
        case Rps.paper:
            aiPick.image = UIImage(named: "paper.png")
            aiPickLb.text = "보"
        }
        
        // player가 랜덤하게 선택한 것(aiPicked) 이미지뷰와 레이블에 표시
        switch playerPicked{
        case Rps.scissor:
            playerPick.image = UIImage(named: "scissor.png")
            playerPickLb.text = "가위"
        case Rps.rock:
            playerPick.image = UIImage(named: "rock.png")
            playerPickLb.text = "바위"
        case Rps.paper:
            playerPick.image = UIImage(named: "paper.png")
            playerPickLb.text = "보"
        }
        
        // 승패 판단하기
        if aiPicked == playerPicked {
            mainLb.text = "Draw"
        } else if aiPicked == .scissor && playerPicked == .rock {
            mainLb.text = "Win"
        } else if aiPicked == .rock && playerPicked == .paper {
            mainLb.text = "Win"
        } else if aiPicked == .paper && playerPicked == .scissor {
            mainLb.text = "Win"
        } else {
            mainLb.text = "Lose"
        }
    }
    
    
    @IBAction func resetBtn(_ sender: UIButton) {
        
        // 게임 초기 화면으로 리셋!
        aiPick.image = UIImage(named: "ready.png")
        aiPickLb.text = "준비"
        playerPick.image = UIImage(named: "ready.png")
        playerPickLb.text = "준비"
        mainLb.text = "선택하세요"
        // ai의 선택도 초기화 시킴
        aiPicked = Rps(rawValue: Int.random(in: 0...2))!
    }
    
    
}

