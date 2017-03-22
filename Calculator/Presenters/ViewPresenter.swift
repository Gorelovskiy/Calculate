//
//  Operation.swift
//  Calculator
//
//  Created by Владимир on 13.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//

class ViewPresenter: CalculatePresenter{
    
    let view: ViewUpdateProtocol!
    var controlOfActions = ControlOfActions()
   
    required init(view: ViewUpdateProtocol) {
        self.view = view
    }
    
    // Processing  number buttons
    func tapNumeralButton(number : String) {
        view.viewModel = controlOfActions.toCalculateResultOfTaped(number: number)
    }
    

    
    // Processing  operation buttons
    func setOperationId(operation id: String) {
       view.viewModel = controlOfActions.toCalculateResultOfTaped(operationId: id)
     
    }
    
    // Processing equal "=" button
    func calculateResult() {
        view.viewModel = controlOfActions.toCalculateResultOperation()
    }
    
    func clearOperation() {
        view.viewModel = controlOfActions.clearAllFields()
        
    }
    
   
}
