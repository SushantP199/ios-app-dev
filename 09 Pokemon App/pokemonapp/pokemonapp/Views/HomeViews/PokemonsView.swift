//
//  PokemonsView.swift
//  pokemonapp
//
//  Created by iSushant on 05/01/23.
//

import SwiftUI

struct PokemonsView: View {
    
    let pokemonViewModel: PokemonViewModel
    
    private let columns: [GridItem] = [.init(.flexible(), spacing: 0), GridItem(.flexible(), spacing: 0)]
    
    var body: some View {
        VStack (spacing: 0)  {
            
            PocketMonstersTitleView()
                .padding()
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(pokemonViewModel.pokemons) { pokemon in
                        NavigationLink(destination: PokemonDetailsView(pokemon: pokemon, pokemonViewModel: pokemonViewModel)) {
                            PokemonView(pokemon: pokemon, pokemonViewModel: pokemonViewModel)
                        }
                    }
                }
                .padding(.horizontal,10)
            }
        }
    }
}
