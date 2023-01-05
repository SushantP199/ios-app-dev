//
//  PokemonView.swift
//  pokemonapp
//
//  Created by iSushant on 05/01/23.
//

import SwiftUI
import Kingfisher

struct PokemonView: View {
    
    let pokemon: PokemonModel
    let pokemonViewModel: PokemonViewModel
    
    var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(pokemonViewModel.backgroundColor(pokeType: pokemon.type)).opacity(0.3))
                    .shadow(color: .black.opacity(0.7), radius: 5, x: 5, y: 5)
                    .frame(width: (UIScreen.main.bounds.width / 2) - 50, height: (UIScreen.main.bounds.width / 2) - 70, alignment: .bottomTrailing)
                    .overlay(
                        VStack (alignment: .trailing, spacing: 4) {
                            Spacer()
                            
                            Text(pokemon.type.uppercased())
                                .font(.system(.caption))
                                .fontWeight(.medium)
                                .padding(.vertical, 5)
                                .padding(.horizontal, 10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.white.opacity(0.1))
                                )
                            
                            Text(pokemon.name.uppercased())
                                .font(.system(.headline))
                                .fontWeight(.bold)
                        }
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding([.trailing, .bottom])
                    )
                
                KFImage(URL(string: pokemon.imageUrl))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120, alignment: .topLeading)
                    .shadow(color: .black.opacity(0.5), radius: 2, x: 2, y: 2)
                    .offset(x: -40, y: -40)
            }
            .frame(width: (UIScreen.main.bounds.width / 2) - 30, height: (UIScreen.main.bounds.width / 2) - 40, alignment: .bottomTrailing)
    }
}
