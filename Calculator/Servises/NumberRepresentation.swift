//
//  NumberRepresentation.swift
//  Calculator
//
//  Created by Владимир on 13.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//

import Foundation

struct NumberRepresentation {
    
    var representation: String
    var isStartingPosition: Bool
    
    init() {
        self.representation = "0"
        self.isStartingPosition = true
    }
    
    mutating func addNumberTo(result label: String ) {
        // If first symbol 
        if isStartingPosition {
            self.representation = label
            self.isStartingPosition = false
        } else {
            self.representation += self.representation.characters.count < 11 ? label : "" //
        }
        
    }
    
    mutating func cleanNumber() {
        representation = "0"
        isStartingPosition = true
    }
    
    mutating func prepareFor(show operand: Double?) {
        guard let result = operand else {
            cleanNumber()
            return
        }
        self.representation = String(result)
    }

}
