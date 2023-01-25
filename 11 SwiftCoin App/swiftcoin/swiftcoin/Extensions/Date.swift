//
//  Date.swift
//  swiftcoin
//
//  Created by iSushant on 25/01/23.
//

import Foundation

extension Date {
    
    init(dateString date: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        self.init(timeInterval: 0, since: dateFormatter.date(from: date) ?? Date())
    }
    
    private var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        return dateFormatter
    }
    
    func toddMMMyyyyFormat() -> String {
        return dateFormatter.string(from: self)
    }
}
