//
//  PokemonViewModel.swift
//  pokemonapp
//
//  Created by iSushant on 05/01/23.
//

import Foundation
import SwiftUI

class PokemonViewModel: ObservableObject {
    
    @Published var pokemons: [PokemonModel] = [PokemonModel]()
    @Published var showAlert: Bool = false
    
    let baseURL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        
        guard let apiURL = URL(string: baseURL) else {
            showAlert = true
            return
        }
        
        URLSession.shared.dataTask(with: apiURL) { data, _, error  in
            
            if error != nil {
                DispatchQueue.main.async { self.showAlert = true }
                return
            }
            
            guard let filteredData = data?.nullSafety(removeString: "null,") else {
                DispatchQueue.main.async { self.showAlert = true }
                return
            }
            
            if let decodedData = try? JSONDecoder().decode([PokemonModel].self, from: filteredData) {
                DispatchQueue.main.async { self.pokemons = decodedData }
            } else {
                DispatchQueue.main.async { self.showAlert = true }
            }
        }
        .resume()
    }
    
    func backgroundColor(pokeType type: String) -> UIColor {
        switch type {
        case "fire": return .orange
        case "poison": return .purple
        case "water": return .blue
        case "electric": return .systemIndigo
        case "psychic": return .brown
        case "normal": return .magenta
        case "ground": return .green
        case "flying": return .tintColor
        case "fairy": return .systemTeal
        default: return .systemPink
        }
    }
}

extension Data {
    
    func nullSafety (removeString string: String) -> Data? {
        
        let dataAsString = String(decoding: self, as: UTF8.self)
        
        let sanitizedData = dataAsString.replacingOccurrences(of: string, with: "")
        
        guard let data: Data? =  Data(sanitizedData.utf8) else { return nil }
        
        return data
    }
}

extension String {
    func ignoreNewLineCharacter() -> String {
        return self.replacingOccurrences(of: "\n", with: "")
    }
}
