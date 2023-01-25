//
//  Double.swift
//  swiftcoin
//
//  Created by iSushant on 19/01/23.
//

import Foundation

extension Double? {
    
    private var currencyFormatter: NumberFormatter {
        let currencyFormatter = NumberFormatter()
        currencyFormatter.maximumFractionDigits = 2
        currencyFormatter.minimumFractionDigits = 2
        currencyFormatter.numberStyle = .currency
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.currencySymbol = "$"
        
        return currencyFormatter
    }
    
    private var numberFormatter: NumberFormatter {
        let numberFormatter = NumberFormatter()
        numberFormatter.maximumFractionDigits = 2
        numberFormatter.minimumFractionDigits = 2
        numberFormatter.numberStyle = .percent
        numberFormatter.usesGroupingSeparator = false
        numberFormatter.percentSymbol = "%"
        
        return numberFormatter
    }
    
    func toCurreny() -> String {
        return currencyFormatter.string(for: self) ?? "$0.00"
    }
    
    func toPercent() -> String {
        return numberFormatter.string(for: self) ?? "0.00%"
    }
    
    func toDouble() -> Double {
        return self ?? 0.00
    }
    
    func inAcronym() -> String {
        let sign = self ?? 0.00 < 0 ? "-" : ""
        
        let value = abs(Double(self ?? 0.00))
        
        switch value {
        case 1_000_000_000_000...:
            let result = String(format: "%.2f", (value/1_000_000_000_000))
            return "\(sign)$\(result)T"
        case 1_000_000_000...:
            let result = String(format: "%.2f", (value/1_000_000_000))
            return "\(sign)$\(result)B"
        case 1_000_000...:
            let result = String(format: "%.2f", (value/1_000_000))
            return "\(sign)$\(result)M"
        case 1_000...:
            let result = String(format: "%.2f", (value/1_000))
            return "\(sign)$\(result)K"
        default:
            let result = String(format: "%.2f", (value))
            return "\(sign)$\(result)"
        }
    }
}
