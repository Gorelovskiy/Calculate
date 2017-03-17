//
//  HistoryRepresentation.swift
//  Calculator
//
//  Created by Владимир on 15.03.17.
//  Copyright © 2017 Gorelovskiy. All rights reserved.
//

import Foundation

struct HistoryRepresentation {
    
    var representation: [String]
    
    
    init() {
        self.representation = [""]
        
    }
    
    mutating func addNumberTo(result label: String ) {
        guard representation.count == 25 else {
            representation.append(label)
            return
        }
        for i in 0 ..< 24 {
            representation[i] = representation[i+1]
        }
        representation[24] = label
    }
    
    mutating func cleanNumber() {
        representation = [""]
    }
    
    mutating func historyResult(massive: [String]) -> String{
        var result: String = ""
        massive.forEach{ (item) in
            result += item
        }
        return result
    }
    
        
}
