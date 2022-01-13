//
//  ViewController.swift
//  Xylophone
//
//  Created by Manav Lamba on 28/01/2022.
//  Copyright © 2022 Manav-Lamba. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        var soundWord = sender.currentTitle
        playSound(sound: soundWord!)
    }
    
    func playSound(sound : String) {
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
