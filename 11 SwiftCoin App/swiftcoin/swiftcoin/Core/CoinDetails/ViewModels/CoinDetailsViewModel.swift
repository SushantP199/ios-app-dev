//
//  CoinDetailsViewModel.swift
//  swiftcoin
//
//  Created by iSushant on 22/01/23.
//

import Foundation
import SwiftUI

class CoinDetailsViewModel {
    
    private let coin: CoinModel
    
    var chartData: [ChartPointModel] = [ChartPointModel]()
    var startDate: Date = Date()
    var endDate: Date = Date()
    var lowPrice: Double = 0.00
    var highPrice: Double = 0.00
    var xAxisValues: [Date] = [Date]()
    var yAxisValues: [Double] = [Double]()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.configureChartData()
    }
    
    var coinName: String {
        return coin.name
    }
    
    var chartMarkColor: Color {
        let difference = self.highPrice - self.lowPrice
        return difference < 0 ? .red : .green
    }
    
    var overviewSectionDetails: CoinDetailsSectionModel {
        // Current Price
        let currentPrice = coin.currentPrice.toCurreny()
        let currentPriceChangeIn24H = coin.priceChangePercentage24H.toDouble()
        let currentPriceStat = StatisticModel(title: "Current Price", value: currentPrice, percentageChange: currentPriceChangeIn24H)
        
        // Market Capitalization
        let marketCap = coin.marketCap.inAcronym()
        let marketCapChangePercentage24H = coin.marketCapChangePercentage24H
        let marketCapStat = StatisticModel(title: "Market Capitalization", value: marketCap, percentageChange: marketCapChangePercentage24H)
        
        // Rank
        let marketCapRank = coin.marketCapRank
        let rankStat = StatisticModel(title: "Rank", value: "\(marketCapRank)", percentageChange: nil)
        
        // Volume
        let totalVolume = coin.totalVolume.inAcronym()
        let totalVolumeStat = StatisticModel(title: "Volume", value: totalVolume, percentageChange: nil)
        
        return CoinDetailsSectionModel(label: "Overview", stats: [currentPriceStat, marketCapStat, rankStat, totalVolumeStat])
    }
    
    var additionalDetails: CoinDetailsSectionModel {
        // 24H High
        let high24H = coin.high24H.toCurreny()
        let high24HStat = StatisticModel(title: "24H High", value: high24H, percentageChange: nil)
        
        // 24H Low
        let low24H = coin.low24H.toCurreny()
        let low24HStat = StatisticModel(title: "24H Low", value: low24H, percentageChange: nil)
        
        // 24H Price Change
        let priceChange24H = coin.priceChangePercentage24H.toCurreny()
        let priceChangePercentage24H = coin.priceChangePercentage24H.toDouble()
        let priceChange24HStat = StatisticModel(title: "24H Price Change", value: priceChange24H, percentageChange: priceChangePercentage24H)
        
        // 24H Market Cap Change
        let marketCapChange24H = coin.marketCapChange24H.inAcronym()
        let marketCapChangePercentage24H = coin.marketCapChangePercentage24H.toDouble()
        let marketCapChange24HStat = StatisticModel(title: "24H Market Cap Change", value: marketCapChange24H, percentageChange: marketCapChangePercentage24H)
        
        return CoinDetailsSectionModel(label: "Additional Details", stats: [high24HStat, low24HStat, priceChange24HStat, marketCapChange24HStat])
    }
    
    func configureChartData() {
        guard let prices = coin.sparklineIn7D?.price else {
            print("DEBUG: prices are not available. Hence graph cannot be drawn.")
            return
        }
        
        self.endDate = Date(dateString: coin.lastUpdated)
        let lastHour = -1.0 * 60 * 60
        var hourTicker = 0.0
        
        for price in prices.reversed() {
            let date = endDate.addingTimeInterval(lastHour * hourTicker)
            let chartDataPoint = ChartPointModel(date: date, price: price)
            chartData.append(chartDataPoint)
            hourTicker = hourTicker + 1
            
            print("DEBUG: \(String(describing: chartDataPoint))")
        }
        
        self.startDate = self.endDate.addingTimeInterval(lastHour * 24.0 * 7.0)
        self.lowPrice = prices.min() ?? 0.00
        self.highPrice = prices.max() ?? 0.00
        self.xAxisValues = [startDate, endDate]
        self.yAxisValues = [lowPrice, (lowPrice+highPrice)/2.0, highPrice]
    }
}
