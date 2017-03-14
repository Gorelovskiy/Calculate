//
//  Operation.swift
//  Calculator
//
//  Created by Владимир on 13.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//

class ViewPresenter: CalculatePresenter{
    
    let view: ViewUpdateProtocol!
    
    private var operation = Operation()
    private var resultOutput = NumberRepresentation()
    
    required init(view: ViewUpdateProtocol) {
        self.view = view
    }
    
    // Processing  number buttons
    func tapNumeralButton(number : String) {
        resultOutput.addNumberTo(result: number)
        view.updateLabelResult(result: resultOutput.representation)
    }
    // Processing  operation buttons
    func setOperationId(operation id: String) {
        operation.operationId = id
        submitValueFor(operand: resultOutput.representation)
        resultOutput.cleanNumber()
        view.updateLabelResult(result: resultOutput.representation)
    }
    
    // Processing equal "=" button
    func calculateResult() {
        submitValueFor(operand: resultOutput.representation)
        let result = MathOperations().calculate(for: operation)
        // Func prepareFor convert result Dount in String 
        resultOutput.prepareFor(show: result)
        view.updateLabelResult(result: resultOutput.representation)
        operation.clean()
    }
    
    // Function determines that value we change - A or B
    private func submitValueFor( operand value: String) {
        guard operation.operandA != nil else {
            operation.operandA = Double(value)
            return
        }
        operation.operandB = Double(value)
    }
    
    
    
   
}
