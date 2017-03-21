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
        updateView(viewModel: controlOfActions.ToCalculateResultOfTaped(number: number))
    }
    

    
    // Processing  operation buttons
    func setOperationId(operation id: String) {
       updateView(viewModel: controlOfActions.ToCalculateResultOfTaped(operationId: id))
     
    }
    
    // Processing equal "=" button
    func calculateResult() {
        updateView(viewModel: controlOfActions.ToCalculateResultOperation())
    }
    
    func clearOperation() {
        /*
        operation.clean()
        historyOutput.cleanNumber()
        resultOutput.cleanNumber()
        resultOutput.cleanPosition()
        updateView()
         */
        
    }
    
    
    
    private func updateView(viewModel: ViewModel) {
        guard let presentation = viewModel.labelPresentation,
              let history = viewModel.labelHistory else {
            return
        }
        view.updateLabelResult(result: presentation)
        view.updateLabelHistory(result: history)
    }
    
    
   
}
