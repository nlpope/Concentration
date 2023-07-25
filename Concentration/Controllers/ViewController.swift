//
//  ViewController.swift
//  Concentration
//
//  Created by Noah Pope on 6/19/23.
//

// Researching Realm w Stewart Lynch
import UIKit

class ViewController: UIViewController {
    //properties = instance variables (flipCount below)
    //all instance variables in swift need an init value
    //but init()s get complicated on classes so just ... = 0, no type necessary
    lazy var game = Concentration(numberOfPairsOfCards: (cardButtonsArray.count + 1) / 2)
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
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("chosen card was not in cardButtons")
        }
        
        func updateViewFromModel() {
            for index in cardButtonsArray.indices {
                let button = cardButtonsArray[index]
                let card = game.cards[index]
                if card.isFaceUp {
                    button.setTitle(emoji(for: card), for: .normal)
                    button.backgroundColor = .white
                } else {
                    button.setTitle("", for: .normal)
                    button.backgroundColor = card.isMathced ? .clear : .orange
                }
            }
        }
        
        func emoji(for card: Card) -> String {
            return "?"
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

