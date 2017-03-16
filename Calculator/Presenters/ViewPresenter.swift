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
    private var historyOutput = HistoryRepresentation()
    
    required init(view: ViewUpdateProtocol) {
        self.view = view
    }
    
    // Processing  number buttons
    func tapNumeralButton(number : String) {
        if resultOutput.isStartingPosition {
            resultOutput.cleanNumber()
        }
        resultOutput.addNumberTo(result: number)
        historyOutput.addNumberTo(result: number)
        updateView()
    }
    // Processing  operation buttons
    func setOperationId(operation id: String) {
        historyOutput.addNumberTo(result: id)
        if self.operation.operationId != nil {
            calculateResult()
        }
        operation.operationId = id
        submitValueFor(operand: resultOutput.representation)
        resultOutput.cleanPosition() 
        updateView()
    }
    
    // Processing equal "=" button
    func calculateResult() {
        submitValueFor(operand: resultOutput.representation)
        let result = MathOperations().calculate(for: operation)
        // Func prepareFor convert result Dount in String 
        resultOutput.prepareFor(show: result)
        
        updateView()
        operation.clean()
    }
    
    func clearOperation() {
        operation.clean()
        historyOutput.cleanNumber()
        resultOutput.cleanNumber()
        resultOutput.cleanPosition()
        updateView()
        
    }
    
    // Function determines that value we change - A or B
    private func submitValueFor( operand value: String) {
        guard operation.operandA != nil else {
            operation.operandA = Double(value)
            return
        }
        operation.operandB = Double(value)
    }
    
    private func updateView() {
        view.updateLabelResult(result: resultOutput.representation)
        view.updateLabelHistory(result: historyResult(massive: historyOutput.representation))
    }
    
    private func historyResult(massive: [String]) -> String{
        var result: String = ""
        for i in 0 ..< massive.count {
            result += massive[i]
        }
        return result
    }
    
   
}
