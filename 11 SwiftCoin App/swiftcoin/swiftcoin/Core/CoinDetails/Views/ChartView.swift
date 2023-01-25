//
//  ChartView.swift
//  swiftcoin
//
//  Created by iSushant on 25/01/23.
//

import SwiftUI
import Charts

struct ChartView: View {
    let coinDetailsViewModel: CoinDetailsViewModel
    
    var body: some View {
        Chart (coinDetailsViewModel.chartData) {
            LineMark(x: .value("Date", $0.date), y: .value("Price", $0.price))
                .interpolationMethod(.catmullRom)
                .foregroundStyle(coinDetailsViewModel.chartMarkColor)
        }
        .chartXScale(
            domain: ClosedRange(
                uncheckedBounds: (
                    lower: coinDetailsViewModel.startDate,
                    upper: coinDetailsViewModel.endDate
                )
            )
        )
        .chartXAxis {
            AxisMarks(position: .top, values: coinDetailsViewModel.xAxisValues) { xValue in
                AxisValueLabel() {
                    Text(xValue.as(Date.self)?.toddMMMyyyyFormat() ?? "")
                }
                AxisGridLine()
            }
        }
        .chartYScale(
            domain: ClosedRange(
                uncheckedBounds: (
                    lower: coinDetailsViewModel.lowPrice,
                    upper: coinDetailsViewModel.highPrice
                )
            )
        )
        .chartYAxis {
            AxisMarks(position: .trailing, values: coinDetailsViewModel.yAxisValues) { yValue in
                AxisValueLabel() {
                    Text(yValue.as(Double.self).inAcronym())
                }
                AxisGridLine()
            }
        }
        .shadow(color: coinDetailsViewModel.chartMarkColor, radius: 10)
        .shadow(color: coinDetailsViewModel.chartMarkColor.opacity(0.25), radius: 10)
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(coinDetailsViewModel: CoinDetailsViewModel(coin: dev.coin))
    }
}
