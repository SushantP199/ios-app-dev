//
//  StatisticData.swift
//  swiftcoin
//
//  Created by iSushant on 22/01/23.
//

import Foundation

struct StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
}
