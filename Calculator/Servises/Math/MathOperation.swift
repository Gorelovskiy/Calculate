//
//  MathOperation.swift
//  Calculator
//
//  Created by Владимир on 13.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//
import Foundation

struct Additution : MathOperation {
    
    var idOperator: Constants.Operation {
      return Constants.Operation.add
    }
    
    func calculate(operandA: Double, operandB: Double) -> Double {
        return operandA + operandB
    }
}

struct Substruction : MathOperation {
    
    var idOperator: Constants.Operation {
        return Constants.Operation.sub
    }
    
    func calculate(operandA: Double, operandB: Double) -> Double {
        return operandA - operandB
    }
}

struct Multiplication : MathOperation {
    
    var idOperator: Constants.Operation {
        return Constants.Operation.mul
    }
    
    func calculate(operandA: Double, operandB: Double) -> Double {
        return operandA * operandB
    }
}

struct Division : MathOperation {
    
    var idOperator: Constants.Operation {
        return Constants.Operation.div
    }
    
    func calculate(operandA: Double, operandB: Double) -> Double {
        return operandA / operandB
    }
}
