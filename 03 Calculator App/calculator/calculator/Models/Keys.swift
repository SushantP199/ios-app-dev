//
//  Keys.swift
//  calculator
//
//  Created by iSushant on 14/12/22.
//

import SwiftUI

enum Keys: String {
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    
    case add = "+"
    case subtract = "-"
    case multiply = "x"
    case divide = "÷"
    case equal = "="
    
    case clear = "AC"
    case negative = "-/+"
    case percent = "%"
    case decimal = "."
    
    var buttonColor: Color {
        switch self {
        case .add, .subtract, .multiply, .divide, .equal:
            return Color("OperatorColor")
        case .clear, .negative, .percent:
            return Color("SpecialSignColor")
        default:
            return Color("DigitColor")
        }
    }
}

enum Operation: String {
    case add = "+", subtract = "-", multiply = "x", divide = "÷", none = "#"
}
