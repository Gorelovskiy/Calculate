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
    var isComma: Bool // Check situation witu double Comma
    var exampleComma: String
    var isZero: Bool // Check situation with double Zero in clean field
    
    init() {
        self.representation = "0"
        self.isStartingPosition = true
        self.isComma = false
        self.exampleComma = "."
        self.isZero = true
    }
    
    mutating func addNumberTo(result label: String ) {
        guard label != self.exampleComma || self.isComma == false else {
            return
        }
        guard label != "0" || self.isZero == false else {
            return
        }
        if isStartingPosition {
            if label == exampleComma {
                self.representation = "0"+exampleComma
                isComma = true
            } else {
                self.representation = label
            }
            if label != "0" {
                isZero = false
            }
            self.isStartingPosition = false
        } else {
            if label == exampleComma {
                self.isComma = true
            }
            self.representation += self.representation.characters.count < 11 ? label : "" //
        }
    }
    
    mutating func cleanNumber() {
        representation = "0"
    }
    
    mutating func cleanPosition() {
        isStartingPosition = true
        isComma = false
        isZero = true
    }
    
    mutating func prepareFor(show operand: Double?) {
        guard let result = operand else {
            cleanNumber()
            cleanPosition()
            return
        }
        self.representation = String(result)
    }
    
   
   
}
