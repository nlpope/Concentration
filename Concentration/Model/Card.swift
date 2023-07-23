//
//  Card.swift
//  Concentration
//
//  Created by Noah Pope on 7/19/23.
//

import Foundation

struct Card {
    
    var isFaceUp = false
    var isMathced = false
    var identifier: Int
    
    static var identifierFactory = 0
    //stored w the type Card
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return Card.identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
    //identifier describes "pair 1, pair 2, pair 3, etc"
}
