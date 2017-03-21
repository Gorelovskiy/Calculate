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
    func calculate(for operation: Operation) -> Double? {
        var result: Double?
        // Retrieval(извлечение) operands and operationID  from model Operation
        guard let operandA = operation.operandA,
              let operandB = operation.operandB,
              let id = operation.operationId else {
                return result
        }
        calculations.forEach { (item) in
            if item.idOperator.rawValue == id {
               result =  item.calculate(operandA: operandA, operandB: operandB)
            }
        }
        return result
    }
}
