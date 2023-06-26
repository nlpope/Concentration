//
//  ViewController.swift
//  Concentration
//
//  Created by Noah Pope on 6/19/23.
//

import UIKit

class ViewController: UIViewController {
    var flipCount: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func touchCard(_ sender: UIButton) {
        //"👻"
        flipCard(withEmoji: "👻", on: sender)
        
    }
    
    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCard(withEmoji: "🎃", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = .orange
        } else {
            //this is where it's shrinking
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = .white
        }
    }
    
}

