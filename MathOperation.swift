//
//  MathOperation.swift
//  Calculator
//
//  Created by Владимир on 13.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//
import Foundation

struct Additution : MathOperation {
    
    var idOperator: String {
        return "+"
    }
    
    func calculate(operandA: Double, operandB: Double) -> Double {
        return operandA + operandB
    }
}

struct Substruction : MathOperation {
    
    var idOperator: String {
        return "-"
    }
    
    func calculate(operandA: Double, operandB: Double) -> Double {
        return operandA - operandB
    }
}

struct Multiplication : MathOperation {
    
    var idOperator: String {
        return "*"
    }
    
    func calculate(operandA: Double, operandB: Double) -> Double {
        return operandA * operandB
    }
}

struct Division : MathOperation {
    
    var idOperator: String {
        return "/"
    }
    
    func calculate(operandA: Double, operandB: Double) -> Double {
        return operandA / operandB
    }
}
