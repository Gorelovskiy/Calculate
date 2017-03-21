//
//  Constants.swift
//  Calculator
//
//  Created by Владимир on 18.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//

import Foundation

struct Constants {
    enum LenghsValidations: Int {
        case maxCountInNumbers = 11
        case maxCountsInHistory = 20
        
    }
    
    enum BorderLayers: Int {
        case nill = 0
        case pressed = 2
        
    }
    
    enum Operation: String {
        case add = "+"
        case sub = "-"
        case mul = "*"
        case div = "/"
    }
}



