//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var player: AVAudioPlayer?

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLable: UILabel!
    
    let softTime = 180
    let mediumTime = 300
    let hardTime = 420
    var secondsPassed : Float = 1
    var totalTime : Float = 0
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        titleLable.text = "How would you like your eggs?"
        let hardness = sender.currentTitle
        if(hardness == "Soft"){
            totalTime = Float(softTime)
        }
        else if(hardness == "Medium"){
            totalTime = Float(mediumTime)
        }
        else{
            totalTime = Float(hardTime)
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @objc func updateCounter() {
        //example functionality
        if secondsPassed <= totalTime {
            print("\(secondsPassed) seconds passed")
            let percentageProgress = Float(secondsPassed/totalTime)
            print(percentageProgress)
            progressBar.progress = percentageProgress
            secondsPassed += 1
        }
        else{
            timer.invalidate()
            playSound()
            titleLable.text = "DONE !!!"
            secondsPassed = 0.0
            totalTime = 0.0
        }
    }
    
    

    
}
