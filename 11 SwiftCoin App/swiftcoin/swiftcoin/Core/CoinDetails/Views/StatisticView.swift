//
//  StatisticView.swift
//  swiftcoin
//
//  Created by iSushant on 22/01/23.
//

import SwiftUI

struct StatisticView: View {
    
    let statistic: StatisticModel
    
    var body: some View {
        VStack (alignment: .leading, spacing: 4) {
            Text(statistic.title)
                .font(.system(.caption))
            
            Text("\(statistic.value)")
                .font(.system(.headline))
            
            if statistic.percentageChange != nil {
                HStack (alignment: .center, spacing: 4) {
                    (statistic.percentageChange.toDouble() > 0)
                    ? Image(systemName: "triangle.fill")
                    : Image(systemName: "arrowtriangle.down.fill")
                        
                    Text("\(statistic.percentageChange.toPercent())")
                        .bold()
                }
                .foregroundColor(statistic.percentageChange.toDouble() > 0 ? .green : .red)
                .font(.system(.caption))
            }
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView(statistic: dev.stat1)
    }
}
