//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    @IBAction func rollButton(_ sender: UIButton) {
        let randomInt1 = Int.random(in: 1..<7)
        let randomInt2 = Int.random(in: 1..<7)
        switch(randomInt1)
        {
        case 1 :diceImageView1.image = UIImage(named:"DiceOne")
            break
        case 2 :diceImageView1.image = UIImage(named:"DiceTwo")
            break
        case 3 :diceImageView1.image = UIImage(named:"DiceThree")
            break
        case 4 :diceImageView1.image = UIImage(named:"DiceFour")
            break
        case 5 :diceImageView1.image = UIImage(named:"DiceFive")
            break
        case 6 :diceImageView1.image = UIImage(named:"DiceSix")
            break
        default: diceImageView1.image = UIImage(named:"DiceTwo")
            break
        }

        
        switch(randomInt2)
        {
        case 1 :diceImageView2.image = UIImage(named:"DiceOne")
            break
        case 2 :diceImageView2.image = UIImage(named:"DiceTwo")
            break
        case 3 :diceImageView2.image = UIImage(named:"DiceThree")
            break
        case 4 :diceImageView2.image = UIImage(named:"DiceFour")
            break
        case 5 :diceImageView2.image = UIImage(named:"DiceFive")
            break
        case 6 :diceImageView2.image = UIImage(named:"DiceSix")
            break
        default: diceImageView2.image = UIImage(named:"DiceTwo")
            break
        }
    }
    
}

