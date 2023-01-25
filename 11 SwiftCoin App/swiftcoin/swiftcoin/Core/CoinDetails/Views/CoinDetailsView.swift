//
//  CoinDetailsView.swift
//  swiftcoin
//
//  Created by iSushant on 19/01/23.
//

import SwiftUI

struct CoinDetailsView: View {
    let coinDetailsViewModel: CoinDetailsViewModel
    
    init(coin: CoinModel) {
        coinDetailsViewModel = CoinDetailsViewModel(coin: coin)
    }
    
    var body: some View {
        ScrollView (showsIndicators: false) {
            // chart
            ChartView(coinDetailsViewModel: coinDetailsViewModel)
                .frame(height: 300)
                .padding(.vertical)
            
            // overview
            CoinDetailsSectionView(coinSectionDetails: coinDetailsViewModel.overviewSectionDetails)
                .padding(.vertical)
            
            // addtional details
            CoinDetailsSectionView(coinSectionDetails: coinDetailsViewModel.additionalDetails)
                .padding(.vertical)
        }
        .navigationTitle(coinDetailsViewModel.coinName)
        .padding(.horizontal)
    }
}

struct CoinDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailsView(coin: dev.coin)
    }
}
