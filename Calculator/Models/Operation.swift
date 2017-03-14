//
//  Operation.swift
//  Calculator
//
//  Created by Владимир on 13.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//

import Foundation

struct Operation {
    var operandA: Double?
    var operandB: Double?
    var operationId: String?
    
    mutating func clean() {
        operandA = nil
        operandB = nil
        operationId = nil
    }
}
