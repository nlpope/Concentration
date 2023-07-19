//
//  ViewController.swift
//  Concentration
//
//  Created by Noah Pope on 6/19/23.
//


import UIKit

class ViewController: UIViewController {
    //properties = instance variables (flipCount below)
    //all instance variables in swift need an init value
    //but init()s get complicated on classes so just ... = 0, no type necessary
    var game = Concentration()
    var flipCount = 0 {
        //below didSet = property observer
        //it observes when the prop/instance variable is changed/set
        didSet {
            flipCountLabel.text = "FLIPS: \(flipCount)"
        }
    }
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtonsArray: [UIButton]!
    
    var emojiChoices = ["🎃","👻","🎃","👻"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtonsArray.firstIndex(of: sender) {
            //the "if let" auto-unwraps it and ...
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("chosen card was not in cardButtons")
        }
        
  
        
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

/**
 doing reading assignment - collection types
 */

