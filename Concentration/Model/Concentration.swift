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
        for identifier in 0..<numberOfPairsOfCards {
            let card = Card(identifier: identifier)
            let matchingCard = card
            //matchingCard is a copy of card (struct)
            cards.append(card)
            cards.append(matchingCard)
        }
    }
}

/**
 API
 > Application Programming Interface
 > How you use this class
 > a list of all the methods and instance variables in a class
 */
