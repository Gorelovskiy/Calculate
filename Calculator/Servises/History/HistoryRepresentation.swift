//
//  HistoryRepresentation.swift
//  Calculator
//
//  Created by Владимир on 15.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//

import Foundation

struct HistoryRepresentation {
    
    var representationValue: [String] = []
    var representationOperation: [String] = []
    
    mutating func addNumberToHistory(result operation: Operation ) {
        guard  let operandA = operation.operandA,
               let operandB = operation.operandB else {
            return
        }
        if representationValue.count == 0 {
            representationValue.append(String(operandA))
        }
        representationValue.append(operation.operationId! + String(operandB))
        
        while toCountRepresentationSimbols() >  LenghsValudation.maxCountsInHistory.rawValue {
            representationValue.remove(at: 0)
        }
    }
    
    mutating func cleanNumber() {
       representationValue = []
    }
    
    mutating func historyResult() -> String{
        var result: String = ""
        representationValue.forEach { (item) in
           result += item
        }
        return result
    }
    
    mutating func toCountRepresentationSimbols() -> Int {
        var result: Int = 0
        representationValue.forEach { (item) in
            result += item.characters.count
        }
        return result
    }
        
}
