//
//  SymbolDataCarrier.swift
//  ForeksCase
//
//  Created by yasin on 11.03.2020.
//  Copyright © 2020 yt. All rights reserved.
//

import Foundation

enum SymbolRiseState {
    case increasing
    case noChange
    case decreasing
}

struct SymbolDataCarrier {
    
    let symbolID: String
    let symbolName: String
    let time: String
    let lastValue: String
    let needsHighlight: Bool
    let riseState: SymbolRiseState
    let leftValue: String
    let rightValue: String
    let leftValueState: SymbolRiseState
    let rightValueState: SymbolRiseState
}
