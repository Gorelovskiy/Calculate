//
//  HistoryRepresentation.swift
//  Calculator
//
//  Created by Владимир on 15.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//

import Foundation

struct HistoryRepresentation {
    
    var representation: [String] = [""]
   
    mutating func addNumberToHistory(result operation: Operation ) {
        guard  let operandA = operation.operandA,
               let operandB = operation.operandB else {
            return
        }
        if representation[0] == "" {
            representation[0] = String(operandA)
        }
        representation.append(operation.operationId! + String(operandB))
    }
    
    mutating func cleanNumber() {
       representation = [""]
    }
    
    mutating func historyResult() -> String{
        var result: String = ""
        representation.forEach { (item) in
           result += item
        }
        return result
    }
    
        
}
