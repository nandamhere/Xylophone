//
//  ViewController.swift
//  Xylophone
//
//  Created by Vaibhav Nandam on 7/3/18.
//  Copyright © 2018 Vaibhav Nandam. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var playSound : AVAudioPlayer?
    
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let path = Bundle.main.path(forResource: soundArray[sender.tag], ofType: "wav")
        let url = URL(fileURLWithPath: path!)
        
        do {
            playSound = try AVAudioPlayer(contentsOf: url)
            playSound?.play()
        } catch {
            print("\(error)")
        }
    }
    
}

