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
    
    init(identifier: Int) {
        self.identifier  = identifier
    }
    //identifier describes "pair 1, pair 2, pair 3, etc"
}
