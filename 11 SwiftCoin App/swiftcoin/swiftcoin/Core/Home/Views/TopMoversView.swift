//
//  TopMoversView.swift
//  swiftcoin
//
//  Created by iSushant on 19/01/23.
//

import SwiftUI

struct TopMoversView: View {
    
    @StateObject var homeViewModel: HomeViewModel
    
    var body: some View {
        VStack {
            Text("Top Movers")
                .font(.system(.headline))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack (spacing: 10) {
                    ForEach(homeViewModel.topMovers, id: \.id) {topMoverCoin in
                        NavigationLink(destination: LazyNavigationView(CoinDetailsView(coin: topMoverCoin))) {
                            TopMoversItemView(coin: topMoverCoin)
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

