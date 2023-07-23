//
//  Concentration.swift
//  Concentration
//
//  Created by Noah Pope on 7/19/23.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        
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

/**
 API
 > Application Programming Interface
 > How you use this class
 > a list of all the methods and instance variables in a class
 */
