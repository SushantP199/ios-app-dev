//
//  TopMoversItemView.swift
//  swiftcoin
//
//  Created by iSushant on 19/01/23.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    
    let coin: CoinModel
    
    var body: some View {
        VStack (alignment: .leading) {
            KFImage(URL(string: coin.image))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32, alignment: .center)
                .padding(.bottom, 8)
            
            HStack (spacing: 5) {
                Text("\(coin.name)")
                    .fontWeight(.bold)
                
                Text(coin.currentPrice.toCurreny())
                    .foregroundColor(.gray)
            }
            .font(.system(.caption))
            .foregroundColor(Color.theme.primaryTextColor)
            
            Text(coin.priceChangePercentage24H.toPercent())
                .font(.system(.title2))
                .foregroundColor(coin.priceChangePercentage24H.toDouble() > 0.00 ? .green : .red)
        }
        .frame(width: 150, height: 150)
        .padding(5)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
        .background(Color.theme.itemBackgroundColor)
    }
}
