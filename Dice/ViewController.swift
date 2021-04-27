//
//  ViewController.swift
//  Dice
//
//  Created by 蔡佳穎 on 2021/4/26.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var dice1ImageView: UIImageView!
    @IBOutlet weak var dice2ImageView: UIImageView!
    @IBOutlet weak var dice3ImageView: UIImageView!
    @IBOutlet weak var dice4ImageView: UIImageView!
    @IBOutlet weak var dice5ImageView: UIImageView!
    @IBOutlet weak var dice6ImageView: UIImageView!
    
    
    @IBOutlet weak var leftPointsLabel: UILabel!
    @IBOutlet weak var rightPointsLabel: UILabel!
    @IBOutlet weak var totalPointsLabel: UILabel!
    
    @IBOutlet weak var leftBtn: UIButton!
    @IBOutlet weak var rightBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    let imageViewNames = ["die.face.1.fill", "die.face.2.fill", "die.face.3.fill", "die.face.4.fill", "die.face.5.fill", "die.face.6.fill"]
    var leftPoint = 0
    var rightPoint = 0
    var sum = 0

    @IBAction func pressRollBtn(_ sender: UIButton) {
        let dice1Index = Int.random(in: 1...6)
        let dice2Index = Int.random(in: 1...6)
        let dice3Index = Int.random(in: 1...6)
        let dice4Index = Int.random(in: 1...6)
        let dice5Index = Int.random(in: 1...6)
        let dice6Index = Int.random(in: 1...6)
        
        switch sender {
        case leftBtn:
            dice1ImageView.image = UIImage(systemName: "die.face.\(dice1Index).fill")
            dice2ImageView.image = UIImage(systemName: "die.face.\(dice2Index).fill")
            dice3ImageView.image = UIImage(systemName: "die.face.\(dice3Index).fill")
            leftPoint = dice1Index + dice2Index + dice3Index
            leftPointsLabel.text = "\(leftPoint)"
            leftPointsLabel.sizeToFit()
        case rightBtn:
            dice4ImageView.image = UIImage(systemName: "die.face.\(dice4Index).fill")
            dice5ImageView.image = UIImage(systemName: "die.face.\(dice5Index).fill")
            dice6ImageView.image = UIImage(systemName: "die.face.\(dice6Index).fill")
            rightPoint = dice4Index + dice5Index + dice6Index
            rightPointsLabel.text = "\(rightPoint)"
            rightPointsLabel.sizeToFit()
        default:
            return
        }
        sum = leftPoint + rightPoint
        totalPointsLabel.text = "Total :\(sum)"
        totalPointsLabel.sizeToFit()

    }
    

}

