//
//  ViewController.swift
//  SoundPlayer
//
//  Created by Maribel Montejano on 11/28/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func guitarButton(_ sender: UIButton) {
        print("Guitar button tapped")
        playSound()
    }

    func playSound() {
        print("Playing sound")
    }
}

