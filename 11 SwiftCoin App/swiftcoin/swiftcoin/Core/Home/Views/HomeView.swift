//
//  HomeView.swift
//  swiftcoin
//
//  Created by iSushant on 19/01/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            ScrollView (.vertical, showsIndicators: false) {
                VStack (spacing: 20) {
                    TopMoversView(homeViewModel: homeViewModel)
                    
                    Divider()
                    
                    AllCoinsView(homeViewModel: homeViewModel)
                }
            }
            .navigationTitle("Live Prices")
            
            if homeViewModel.isLoading {
                CustomLoadingIndicator()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
