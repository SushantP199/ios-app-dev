//
//  AllCoinsItemView.swift
//  swiftcoin
//
//  Created by iSushant on 19/01/23.
//

import SwiftUI
import Kingfisher

struct AllCoinsItemView: View {
    
    let coin: CoinModel
    
    var body: some View {
        HStack {
            Text("\(coin.marketCapRank)")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(Color(.systemGray3))
            
            KFImage(URL(string: coin.image))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32, alignment: .center)
            
            VStack (alignment: .leading) {
                Text("\(coin.name)")
                    .fontWeight(.bold)
                
                Text("\(coin.symbol)")
                    .padding(.leading, 1)
            }
            .font(.system(.subheadline))
            .padding(.leading, 3)
            .foregroundColor(Color.theme.primaryTextColor)
            
            Spacer()
            
            VStack (alignment: .trailing) {
                Text(coin.currentPrice.toCurreny())
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.primaryTextColor)
                
                Text(coin.priceChangePercentage24H.toPercent())
                    .foregroundColor(coin.priceChangePercentage24H.toDouble() <= 0.00 ? .red : .green)
            }
            .font(.system(.subheadline))
        }
        .padding(.vertical, 5)
    }
}
