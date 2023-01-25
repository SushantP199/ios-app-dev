//
//  AllCoinsView.swift
//  swiftcoin
//
//  Created by iSushant on 19/01/23.
//

import SwiftUI

struct AllCoinsView: View {
    
    @StateObject var homeViewModel: HomeViewModel
    
    var body: some View {
        VStack {
            Text("All Coins")
                .font(.system(.headline))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                Text("Coin")
                
                Spacer()
                
                Text("Prices")
            }
            .font(.system(.caption))
            .foregroundColor(.gray)
            .padding(.vertical, 4)
            
            ScrollView {
                LazyVStack {
                    ForEach(homeViewModel.coins, id: \.id) { coin in
                        NavigationLink(destination: LazyNavigationView(CoinDetailsView(coin: coin))) {
                            AllCoinsItemView(coin: coin)
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}
