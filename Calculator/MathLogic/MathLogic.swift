//
//  MathLogic.swift
//  Calculator
//
//  Created by Владимир on 13.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//

import Foundation

struct MathOperations {
    var calculations: [MathOperation] = []
    
    init() {
        self.calculations.append(Additution())
        self.calculations.append(Substruction())
        self.calculations.append(Multiplication())
        self.calculations.append(Division())
    }
    
    // Double? - optional tipe
    func calculate(id: String) -> Double? {
        
        var result: Double?
        
        calculations.forEach { (item) in
            if item.idOperator == id {
               result =  item.calculate(operandA: 2, operandB: 5)
            }
        }
        return result
    }
}
