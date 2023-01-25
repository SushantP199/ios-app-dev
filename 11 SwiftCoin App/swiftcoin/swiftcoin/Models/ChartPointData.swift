//
//  ChartPointData.swift
//  swiftcoin
//
//  Created by iSushant on 25/01/23.
//

import Foundation

struct ChartPointModel: Identifiable {
    var id = UUID().uuidString
    var date: Date
    var price: Double
}
