//
//  ControlOfActions.swift
//  Calculator
//
//  Created by Владимир on 20.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//

import Foundation

struct ControlOfActions {
    
    private var viewModel = ViewModel()
    private var operation = Operation()
    
    private var managerNumber = ManagerNumber()
    private var historyOutput = HistoryRepresentation()
   
    
    mutating func ToCalculateResultOfTaped(number value: String) -> ViewModel {
        viewModel.labelPresentation = managerNumber.calculateNumberPresentation(number: value, operation: operation)
        self.operation = managerNumber.operationObject // extraction changed model Operation
        viewModel.labelHistory = ""
        return viewModel
    }
    
    mutating func ToCalculateResultOfTaped(operationId: String) -> ViewModel {
        viewModel.labelPresentation = managerNumber.calculateOperationPresentation(operationId: operationId, operation: operation)
        self.operation = managerNumber.operationObject // extraction changed model Operation
        viewModel.labelHistory = ""
        return viewModel
    }
    
    mutating func ToCalculateResultOperation() -> ViewModel {
        viewModel.labelPresentation = managerNumber.calculateResult(operation: operation)
        self.operation = managerNumber.operationObject // extraction changed model Operation
        viewModel.labelHistory = ""
        return viewModel
    }
}
