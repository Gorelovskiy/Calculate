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
    var representationAction: [String] = []
   
     mutating func addNumberToHistory(result value: String ) {
       /* guard self.representation.count == 25 else {
            representation.append(value)
            return
        }
        for i in 0 ..< 24 {
            representation[i] = representation[i+1]
        }
        representation[24] = value
         */
    }
    
    mutating func cleanNumber() {
        //representation = [""]
    }
    
    mutating func historyResult() -> String{
        var result: String = ""
       // representation.forEach{ (item) in
        //    result += item
       // }
        return result
    }
    
        
}
