//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Manav Lamba on 14/01/2022.
//  Copyright © 2022 Manav-Lamba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballDisplay: UIImageView!
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    
    
    @IBAction func askButton(_ sender: Any) {
        ballDisplay.image = ballArray[Int.random(in: 0...4)]
    }
    
    

}

