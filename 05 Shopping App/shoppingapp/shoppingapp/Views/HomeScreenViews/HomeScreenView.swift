//
//  HomeScreenView.swift
//  shoppingapp
//
//  Created by iSushant on 23/12/22.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: "line.3.horizontal")
                
                Spacer()
                
                Image(systemName: "cart.badge.plus")
            }
            .font(.title2)
            
            Text("Hey,")
                .font(.system(.title))
                .fontWeight(.bold)
            
            Text("Find fresh fruits that you want")
                .font(.system(.callout))
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.gray.opacity(0.2))
                .frame(width: .infinity, height: 60)
                .overlay(
                    HStack (spacing: 10) {
                        Image(systemName: "magnifyingglass")
                            
                        Text("Search fresh fruits")
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                        .font(.callout)
                        .padding()
                )
            
            Text("Top Selling")
                .font(.system(.title))
                .fontWeight(.bold)
                .padding(.top, 10)
            
            TopSellingView()
            
            Text("Near You")
                .font(.system(.title))
                .fontWeight(.bold)
            
            NearYouView()
        }
        .padding()
        .navigationBarHidden(true)
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
