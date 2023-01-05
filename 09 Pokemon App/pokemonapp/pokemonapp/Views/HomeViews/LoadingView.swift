//
//  LoadingView.swift
//  pokemonapp
//
//  Created by iSushant on 05/01/23.
//

import SwiftUI

struct LoadingView: View {
    @State private var angle: Double = 0
    @State private var scale: Double = 200
    
    var body: some View {
        Image("pokemon")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: scale, height: scale, alignment: .center)
            .rotationEffect(.degrees(angle))
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    withAnimation(.spring().speed(100)) {
                        scale = 50
                    }
                    withAnimation (.linear(duration: 1.5).repeatForever()) {
                        angle = 360
                    }
                }
            }
    }
}
