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

    @IBAction func applauseButton(_ sender: UIButton) {
        print("Applause button tapped")
        playSound(audioSound: "applause")
    }
    
    @IBAction func guitarButton(_ sender: UIButton) {
        print("Guitar button tapped")
        playSound(audioSound: "guitar")
    }
    
    @IBAction func bubblesButton(_ sender: UIButton) {
        print("Bubble button tapped")
        playSound(audioSound: "bubbles")
    }
    
    @IBAction func monsterButton(_ sender: UIButton) {
        print("Monster button tapped")
        playSound(audioSound: "monster")
    }
    
    func playSound(audioSound: String) {
        print("playsound called")
        
        // like: let image = UIImage(named: "ice")
        // use a generic object (NSDataAsset)
        // it's a generic holding container for asset
        let sound = NSDataAsset(name: audioSound)
        
        if sound == nil {
            print("error opening sound")
            return
        }
        
        // play the sound
        do {
            // tells the system that playback is desired
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            // activate the session
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("error setting up AVAudioSession")
        }
            
        do {
            player = try AVAudioPlayer(data: (sound?.data)!)
            player?.play()
        } catch {
            print("error playing sound")
        }
    }
}

