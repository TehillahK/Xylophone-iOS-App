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


    @IBAction func playCKeyButton(_ sender: UIButton) {
        playSound(key: "C")
    }
    
    @IBAction func playDKeyButton(_ sender: UIButton) {
        playSound(key: "D")
    }
    
    @IBAction func playEKeyButton(_ sender: UIButton) {
        playSound(key: "E")
    }
    
    @IBAction func playFKeyButton(_ sender: UIButton) {
        playSound(key: "F")
    }
    
    
    @IBAction func playGKeyButton(_ sender: UIButton) {
        playSound(key: "G")
    }
    
    
    @IBAction func playAKeyButton(_ sender: UIButton) {
        playSound(key: "A")
    }
    
    @IBAction func playBKeyButton(_ sender: UIButton) {
        playSound(key: "B")
    }
    
    
    
    func playSound(key: String) {
        
       let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)

        player?.play()

        
    }
    
    
    

}




