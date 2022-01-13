//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Manav Lamba on 12/01/2022.
//  Copyright © 2022 Manav-Lamba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    var index = 0
    let quiz = [
        ["Four + Two = Six","True"],
        ["Three + Seven = Six","False"],
        ["Eleven + Thirteen = Twenty Four","True"]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        printQues()
    }

    func printQues(){
        questionLabel.text = quiz[index][0]
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if (sender.currentTitle == quiz[index][1])
        {
            print("Correct")
        }
        else
        {
            print("Incorrect")
        }
        if index<quiz.count-1{
            index += 1
        }
        printQues()
    }
}
