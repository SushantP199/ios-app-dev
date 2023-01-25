//
//  HomeViewModel.swift
//  swiftcoin
//
//  Created by iSushant on 19/01/23.
//

import Foundation


class HomeViewModel: ObservableObject {
    
    @Published var coins: [CoinModel] = [CoinModel]()
    @Published var topMovers: [CoinModel] = [CoinModel]()
    @Published var isLoading = true
    
    init() {
        self.fetchCoinsData()
    }
 
    func fetchCoinsData() {
        let url = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=25&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let apiURL = URL(string: url) else {
            print("DEBUG: Given URL is not in correct type \n \(url)")
            self.isLoading = false
            return
        }
        
        URLSession.shared.dataTask(with: apiURL) { data, urlResponse, error in
            if let error = error {
                print("DEBUG: OOPS! Something wronmg happened \n \(error)")
                self.isLoading = false
                return
            }
            
            guard let responseData = data else {
                print("DEBUG: data not found in \n \(String(describing: data))")
                self.isLoading = false
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode([CoinModel].self, from: responseData)
                
                DispatchQueue.main.async {
                    self.coins = decodedData
                    print("DEBUG: coins are \n \(self.coins)")
                    
                    self.getTopMovers()
                    self.isLoading = false
                }
                
            } catch let error {
                print("DEBUG: data cannot be decoded \n \(error)")
                self.isLoading = false
                return
            }
        }
        .resume()
    }
    
    func getTopMovers() {
        self.topMovers = self.coins.sorted(by: {
            switch($0.priceChangePercentage24H, $1.priceChangePercentage24H) {
            case (nil, nil): return false
            case (_?, nil): return false
            case (nil, _?): return true
            case let (coinOne?, coinTwo?): return coinOne > coinTwo
            }
        })
    }
}
