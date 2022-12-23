//
//  OnboardingScreenView.swift
//  shoppingapp
//
//  Created by iSushant on 23/12/22.
//

import SwiftUI

struct OnboardingScreenView: View {
    var body: some View {
        NavigationView {
            VStack (spacing: 10) {
                Spacer()
                
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                VStack (alignment: .leading , spacing: 5) {
                    Text("Order Your Favorite Fruits")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                    
                    Text("Eat fresh fruits and try to be healthy")
                        .font(.title3)
                        .opacity(0.8)
                }
                .padding()
                
                Spacer()
                
                NavigationLink(destination: HomeScreenView()) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("6"))
                        .frame(width: 300, height: 60)
                        .overlay(
                            HStack (spacing: 10) {
                                Text("Next")
                                    .fontWeight(.semibold)
                                    .font(.title)
                                
                                Image(systemName: "chevron.right")
                                    .font(.title3)
                            }
                                .foregroundColor(.black)
                                .padding()
                        )
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct OnboardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreenView()
    }
}
