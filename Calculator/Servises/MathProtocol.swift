//
//  MathOperation.swift
//  Calculator
//
//  Created by Владимир on 13.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//
protocol MathOperation {
    var idOperator: String { get } // get - variable only geting
    func calculate(operandA: Double, operandB: Double) -> Double
    
}
