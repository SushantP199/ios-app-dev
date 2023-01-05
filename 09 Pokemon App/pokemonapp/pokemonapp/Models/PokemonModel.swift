//
//  PokemonModel.swift
//  pokemonapp
//
//  Created by iSushant on 05/01/23.
//

import Foundation

struct PokemonModel: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let height: Int
    let weight: Int
    let attack: Int
    let defense: Int
    let description: String
}
