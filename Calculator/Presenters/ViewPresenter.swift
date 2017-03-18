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
        if operation.operationId == nil {
            addSimbols(number: number)
        } else {
            if  self.operation.operandA == nil {
                submitValueFor(operand: resultOutput.representation)
            }
            addSimbols(number: number)
            submitValueFor(operand: resultOutput.representation)
        }
        updateView()
    }
    
    private func addSimbols(number: String) {
        if resultOutput.isStartingPosition {
            resultOutput.cleanNumber()
        }
        resultOutput.addNumberTo(result: number)
    }
    
    
    func tapCommaButton() {
        resultOutput.addComma()
        updateView()
    }
    
    // Processing  operation buttons
    func setOperationId(operation id: String) {
        if  operation.operationId != nil &&
            operation.operandA != nil &&
            operation.operandB != nil {
            calculateResult()
        }
        operation.operationId = id
        resultOutput.cleanPosition() 
        updateView()
    }
    
    // Processing equal "=" button
    func calculateResult() {
        submitValueFor(operand: resultOutput.representation)
        historyOutput.addNumberToHistory(result: operation)
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
    
    func updateView() {
        view.updateLabelResult(result: resultOutput.representation)
        view.updateLabelHistory(result:
            historyOutput.historyResult()
        )
    }
    
    
   
}
