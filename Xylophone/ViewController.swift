//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func keyPressed(_ sender: UIButton) {
        print("Start")
        UIView.animate(withDuration: 0.3) {
                sender.alpha = 0.5
            }
        playSound(key: sender.currentTitle!)

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
                
                
                UIView.animate(withDuration: 0.3) {
                    sender.alpha = 1.0
                }
            print("End")
                
                
        }
       
    }
    
    
    func playSound(key: String) {
       let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)

        player?.play()

        
    }
    
    
    

}




