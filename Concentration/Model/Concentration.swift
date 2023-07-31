//
//  Concentration.swift
//  Concentration
//
//  Created by Noah Pope on 7/19/23.
//

/**
 NOTES:
 
 homework - add new game button
 hw - shuffle cards
 hw - make card buttons 80pts wide (fits 4 across really nice)
 > having trouble setting button length to 80pts 
 */

import Foundation

class Concentration {
    
    var cards = [Card]()
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    //do summat when a card is chosen
    //this is the entirety of the concentration game logic
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            //for when only 1 card is face up
            if let indexToMatchAgainst = indexOfOneAndOnlyFaceUpCard, indexToMatchAgainst != index {
                // check if cards match/ have the same .identifier
                if cards[indexToMatchAgainst].identifier == cards[index].identifier {
                    cards[indexToMatchAgainst].isMatched = true
                    cards[index].isMatched = true
                }
                //you're registering the match before it's flipped over
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil
            } else {
                // either no cards or 2 cards are face up
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                //then immediately after, flip face up the card that was chosen to trigger all this
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 0..<numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
            //appending a struct to an array copies it
            //so we now have 1 OG "card" and 2 independent copies
        }
        //TODO: - Shuffle the cards
    }
}


