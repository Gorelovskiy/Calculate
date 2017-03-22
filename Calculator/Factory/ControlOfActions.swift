//
//  ControlOfActions.swift
//  Calculator
//
//  Created by Владимир on 20.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//

import Foundation

struct ControlOfActions {

    private var operation = Operation()
    
    private var managerNumber = ManagerNumber()
    private var historyOutput = HistoryRepresentation()
   
    
    mutating func toCalculateResultOfTaped(number value: String) -> ViewModel {
        var viewModel = ViewModel()
        viewModel.labelPresentation = managerNumber.calculateNumberPresentation(number: value, operation: operation)
        self.operation = managerNumber.operationObject // extraction changed model Operation
        viewModel.labelHistory = historyOutput.addNumberToHistory(result: operation)
        return viewModel
    }
    
    mutating func toCalculateResultOfTaped(operationId: String) -> ViewModel {
        var viewModel = ViewModel()
        viewModel.labelPresentation = managerNumber.calculateOperationPresentation(operationId: operationId, operation: operation)
        self.operation = managerNumber.operationObject // extraction changed model Operation
        viewModel.labelHistory = historyOutput.addNumberToHistory(result: operation)
        return viewModel
    }
    
    mutating func toCalculateResultOperation() -> ViewModel {
        var viewModel = ViewModel()
        viewModel.labelPresentation = managerNumber.calculateResult(operation: operation)
        self.operation = managerNumber.operationObject // extraction changed model Operation
        viewModel.labelHistory = historyOutput.addNumberToHistory(result: operation)
        return viewModel
    }
    
    mutating func clearAllFields() -> ViewModel {
        var viewModel = ViewModel()
        viewModel.labelPresentation = managerNumber.clearFields(operation: operation)
        self.operation = managerNumber.operationObject // extraction changed model Operation
        viewModel.labelHistory = historyOutput.cleanNumber()
        return viewModel
    }
}
