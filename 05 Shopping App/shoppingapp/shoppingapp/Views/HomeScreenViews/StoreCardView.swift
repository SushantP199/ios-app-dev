//
//  StoreCardView.swift
//  shoppingapp
//
//  Created by iSushant on 23/12/22.
//

import SwiftUI

struct StoreCardView: View {
    
    let store: StoreModel
    
    var body: some View {
        HStack (spacing: 10) {
            RoundedRectangle(cornerRadius: 10)
                .fill(.gray.opacity(0.1))
                .frame(width: 110, height: 110, alignment: .leading)
                .overlay(
                    Image(store.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                )
            
            VStack (alignment: .leading, spacing: 5) {
                Text(store.name)
                    .font(.system(.headline))
                
                Text(store.time)
                    .font(.system(.subheadline))
                    .opacity(0.7)
                
                Text(store.rating)
                    .font(.system(.subheadline))
            }
        }
    }
}

struct StoreCardView_Previews: PreviewProvider {
    static var previews: some View {
        StoreCardView(store: StoreModel(id: 1, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1"))
    }
}
