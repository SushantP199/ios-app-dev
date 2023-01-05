//
//  PokemonDetailsView.swift
//  pokemonapp
//
//  Created by iSushant on 05/01/23.
//

import SwiftUI
import Kingfisher

struct PokemonDetailsView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let pokemon: PokemonModel
    let pokemonViewModel: PokemonViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.red.opacity(0.1), .blue.opacity(0.2), .green.opacity(0.3)],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack (spacing: 15) {
                Text("\(pokemon.name.capitalized)")
                    .font(.system(.title))
                    .fontWeight(.bold)
                    .foregroundColor(Color(pokemonViewModel.backgroundColor(pokeType: pokemon.type)))
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(.ultraThickMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(color: Color(pokemonViewModel.backgroundColor(pokeType: pokemon.type)).opacity(0.5), radius: 5, x: 5, y: 5)
                    .shadow(color: .white.opacity(0.7), radius: 8, x: -8, y: -8)
                    .padding(.top)
                
                VStack (alignment: .center, spacing: 10) {
                    Text("Specs")
                        .font(.system(.title))
                        .fontWeight(.semibold)
                        .padding(.bottom, 10)
                    
                    HStack (spacing: 10) {
                        Text("Height: \(pokemon.height)")
                            .fontWeight(.medium)
                        
                        Text("Weight: \(pokemon.weight)")
                            .fontWeight(.medium)
                    }
                    
                    HStack (spacing: 10) {
                        Text("Attack: \(pokemon.attack)")
                            .fontWeight(.medium)
                        
                        Text("Defense: \(pokemon.defense)")
                            .fontWeight(.medium)
                    }
                }
                .padding()
                .font(.system(.title3))
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(Color(pokemonViewModel.backgroundColor(pokeType: pokemon.type)))
                
                KFImage(URL(string: pokemon.imageUrl))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250, alignment: .center)
                    .shadow(color: Color(pokemonViewModel.backgroundColor(pokeType: pokemon.type)).opacity(0.5), radius: 5, x: 5, y: 5)
                
                VStack {
                    Text("Description")
                        .font(.system(.title))
                        .fontWeight(.semibold)
                        .padding(.bottom, 10)
                    
                    ScrollView{
                        Text("\(pokemon.description.ignoreNewLineCharacter())")
                            .multilineTextAlignment(.leading)
                            .font(.system(.body))
                    }
                }
                .padding()
                .frame(height: 200)
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(Color(pokemonViewModel.backgroundColor(pokeType: pokemon.type)))
                
                Button {
                    dismiss()
                } label: {
                    HStack (alignment: .center, spacing: 0) {
                        Image(systemName: "chevron.left")
                        
                        Text(" Back To ")
                        
                        Image("pokemon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50, alignment: .center)
                            .rotationEffect(.degrees(-45))
                        
                        Text("'s")
                        
                     }
                    .font(.system(.title))
                    .padding()
                    .frame(width: .infinity, height: 60, alignment: .center)
                    .foregroundColor(.white)
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .shadow(color: (Color(pokemonViewModel.backgroundColor(pokeType: pokemon.type)).opacity(0.5)), radius: 5, x: 5, y: 5)
                }
                
                Spacer()
            }
            .foregroundColor(.black.opacity(0.75))
            .padding(.horizontal, 20)
            
        }
        .navigationBarHidden(true)
    }
}
