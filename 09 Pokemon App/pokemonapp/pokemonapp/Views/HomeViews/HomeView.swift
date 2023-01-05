//
//  HomeView.swift
//  pokemonapp
//
//  Created by iSushant on 05/01/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var pokemonViewModel: PokemonViewModel = PokemonViewModel()
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.red.opacity(0.1), .blue.opacity(0.2), .green.opacity(0.3)],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            if pokemonViewModel.pokemons.isEmpty && !pokemonViewModel.showAlert {
                LoadingView()
            }
            
            if !pokemonViewModel.pokemons.isEmpty {
                PokemonsView(pokemonViewModel: pokemonViewModel)
            }
        }
        .navigationBarHidden(true)
        .alert(
            "Pokemons will not be available. As resource is bad one.",
            isPresented: $pokemonViewModel.showAlert) {
            Button {
                exit(0)
            } label: {
                Text("Cancel")
            }
        }
        
    }
}
