//
//  ManagerNumber.swift
//  Calculator
//
//  Created by Владимир on 20.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//

import Foundation

struct ManagerNumber {
    
    var operationObject = Operation()
    var resultOutput = NumberRepresentation()
    
    mutating func calculateNumberPresentation(number: String, operation: Operation) -> String {
        operationObject = operation
        if number != "." {
            calculateLogicAdd(simbol: number)
        } else {
            resultOutput.addComma()
        }
        return resultOutput.representation
    }
    
    mutating func calculateOperationPresentation(operationId: String, operation: Operation) -> String {
        operationObject = operation
        if  operationObject.operationId != nil &&
            operationObject.operandA != nil &&
            operationObject.operandB != nil {
            calculateResult()
        }
        operationObject.operationId = operationId
        resultOutput.cleanPosition()
        return resultOutput.representation
    }
    
    mutating func calculateResult(operation: Operation) -> String {
        operationObject = operation
        calculateResult()
        return resultOutput.representation
    }
    
    
    
    private mutating func calculateLogicAdd(simbol number: String) {
        if operationObject.operationId == nil {
            addSimbols(number: number)
        } else {
            if  operationObject.operandA == nil {
                submitValueFor(operand: resultOutput.representation)
            }
            addSimbols(number: number)
            submitValueFor(operand: resultOutput.representation)
        }
    }
    
    private mutating func addSimbols(number: String) {
        if resultOutput.isStartingPosition {
            resultOutput.cleanNumber()
        }
        resultOutput.addNumberTo(result: number)
    }
    
    // Function determines that value we change - A or B
    private mutating func submitValueFor( operand value: String) {
        guard operationObject.operandA != nil else {
            operationObject.operandA = Double(value)
            return
        }
        operationObject.operandB = Double(value)
    }
    
    private mutating func calculateResult() {
        submitValueFor(operand: resultOutput.representation)
        let result = MathOperations().calculate(for: operationObject)
        resultOutput.prepareFor(show: result)
        operationObject.clean()

    }
    
    
    
    
    
    
}
