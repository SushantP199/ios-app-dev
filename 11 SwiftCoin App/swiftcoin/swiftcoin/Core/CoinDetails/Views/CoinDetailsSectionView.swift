//
//  CoinDetailsSectionView.swift
//  swiftcoin
//
//  Created by iSushant on 22/01/23.
//

import SwiftUI

struct CoinDetailsSectionView: View {
    
    let coinSectionDetails: CoinDetailsSectionModel
    
    private let columns: [GridItem] = [GridItem(.flexible()), .init(.flexible())]
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(coinSectionDetails.label)
                .font(.system(.title))
                .fontWeight(.bold)
            
            LazyVGrid(columns: columns, alignment: .leading, spacing: 20) {
                ForEach(coinSectionDetails.stats) { stat in
                    StatisticView(statistic: stat)
                }
            }
        }
    }
}

struct CoinDetailsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailsSectionView(coinSectionDetails: dev.sectiomModel)
    }
}
