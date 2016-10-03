//
//  StructEnums.swift
//  Calculator
//
//  Created by brecht tanghe on 18/09/16.
//  Copyright © 2016 brecht tanghe. All rights reserved.
//

import Foundation

enum Operator: String{
    case add = "+"
    case substract = "-"
    case times = "*"
    case divide = "/"
    case nothing = ""
}

enum CalculationState: String{
    case enteringNum = "enteringNum"
    case newNumStarted = "newNumStarted"
}
