//
//  ViewController.swift
//  hookah
//
//  Created by MacBook on 01.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    var timer = Timer()
    var secondsPassed = 0
    var totalTime = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let tagButton = sender.tag
        print(tagButton)
        timer.invalidate()
        
        totalTime = tagButton
        progressBar.progress = 0.0
        secondsPassed = 0
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
    }
    @objc func timerAction() {
        
        if secondsPassed < totalTime {
           secondsPassed += 1
            progressBar.progress = Float(secondsPassed)/Float(totalTime)
           print(Float(secondsPassed)/Float(totalTime))
        }

    }
        
}

