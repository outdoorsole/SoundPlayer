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
        print("playsound called")
        
        // like: let image = UIImage(named: "ice")
        // use a generic object (NSDataAsset)
        // it's a generic holding container for asset
        let sound = NSDataAsset(name: "guitar")
        if sound == nil {
            print("error opening sound")
        }
    }
}

